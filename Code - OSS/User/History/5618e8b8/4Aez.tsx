import { getAnimeById } from "@/actions/getAnimeById";

import { AnimeResponse } from "@/types/AnimeResponse";
import React from "react";

import DOMPurify from "isomorphic-dompurify";
import Image from "next/image";

import AnimeStatus from "@/components/anime/info/AnimeStatus";
import Genres from "@/components/anime/info/Genres";

import Episodes from "@/components/anime/info/Episodes";
import { Anime } from "@/types/Anime";
import Link from "next/link";
import buildTrailerUrl from "@/utils/buildTrailerUrl";
import formatDate from "@/utils/formatDate";

interface Props {
  params: Promise<{ id: number }>;
}

const Meta = ({ label, value }: { label: string; value?: any }) =>
  value ? (
    <p>
      <span className="text-gray-400">{label}:</span>{" "}
      <span className="text-gray-200">{value}</span>
    </p>
  ) : null;



export default async function page({ params }: Props) {
  const { id } = await params;
  const anime: Anime = await getAnimeById(id);
  anime.synonyms = ["gsfas", "sdafasdf", "sfdfsda sfsfsfasf sdf"];
  console.log(anime.relations);
return (
  <div className="min-h-screen relative">
    {/* HERO */}
    <div className="relative w-full h-[420px]">
      {anime.bannerImage && (
        <Image
          src={anime.bannerImage}
          alt={anime.title.romaji ?? "Banner"}
          fill
          priority
          className="object-cover"
        />
      )}

      <div className="absolute inset-0 bg-gradient-to-b from-black/70 via-black/40 to-black" />

      <div className="absolute bottom-8 left-8 z-10 max-w-3xl">
        <h1 className="text-4xl font-extrabold text-white mb-2">
          {anime.title.romaji || anime.title.english}
        </h1>

        <div className="flex items-center gap-4 text-gray-200">
          <span className="text-xl">⭐ {anime.averageScore ?? "–"}</span>
          <span className="text-xl">🔥 {anime.popularity ?? "–"}</span>
          {anime.status && <AnimeStatus status={anime.status} />}
        </div>
      </div>
    </div>

    {/* CONTENT */}
    <div className="max-w-7xl mx-auto px-6 -mt-28 relative z-10">
      <div className="grid grid-cols-1 lg:grid-cols-[320px_1fr] gap-10">
        {/* ASIDE */}
        <aside className="sticky top-24 space-y-4">
          {anime.coverImage?.extraLarge && (
            <Image
              src={anime.coverImage.extraLarge}
              alt={anime.title.romaji ?? "Cover"}
              width={320}
              height={480}
              className="rounded-xl shadow-xl"
              priority
            />
          )}

          <div className="bg-gray-900/80 backdrop-blur rounded-xl p-4 text-sm text-gray-300 space-y-2">
            <Meta label="Estudio" value={anime.studio} />
            <Meta label="Fuente" value={anime.source} />
            <Meta label="Episodios" value={anime.episodes} />
            <Meta
              label="Duración"
              value={anime.duration && `${anime.duration} min`}
            />
            <Meta label="Inicio" value={`${anime.startDate?.day}/`} />
            {anime.endDate && (
              <Meta label="Fin" value={formatDate(anime.endDate)} />
            )}

            {anime.isAdult && (
              <span className="inline-block mt-2 text-red-400 font-semibold">
                +18 Adulto
              </span>
            )}
          </div>

          {anime.nextAiringEpisode && (
            <div className="bg-blue-900/30 border border-blue-500/30 rounded-xl p-3 text-sm">
              <p className="text-blue-300 font-semibold mb-1">
                Próximo episodio
              </p>
              <p>
                Episodio {anime.nextAiringEpisode.episode} –{" "}
                {new Date(
                  anime.nextAiringEpisode.airingAt * 1000
                ).toLocaleString()}
              </p>
            </div>
          )}
        </aside>

        {/* MAIN */}
        <section className="space-y-6">
          {anime.synonyms.length > 0 && (
            <p className="text-sm text-gray-400 italic">
              {anime.synonyms.join(", ")}
            </p>
          )}

          <Genres genres={anime.genres} />

          {anime.description && (
            <div
              className="prose prose-invert max-w-none"
              dangerouslySetInnerHTML={{
                __html: DOMPurify.sanitize(anime.description),
              }}
            />
          )}

          {anime.trailer?.thumbnail && (
            <div className="mt-6">
              <Link
                href={buildTrailerUrl(anime.trailer)!}
                target="_blank"
              >
                <Image
                  src={anime.trailer.thumbnail}
                  alt="Trailer"
                  width={480}
                  height={270}
                  className="rounded-lg hover:opacity-90 transition"
                />
              </Link>
            </div>
          )}
        </section>
      </div>
    </div>
  </div>
);
