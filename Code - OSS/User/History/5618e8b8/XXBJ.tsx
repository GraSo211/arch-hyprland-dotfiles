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

interface Props {
  params: Promise<{ id: number }>;
}

export default async function page({ params }: Props) {
  const { id } = await params;
  const anime: Anime = await getAnimeById(id);
  anime.synonyms = ["gsfas", "sdafasdf", "sfdfsda sfsfsfasf sdf"];
  console.log(anime.relations);
  return (
    <div className="min-h-screen flex flex-col items-center justify-center relative">
      {/*       <div className="absolute top-0 left-0 w-full lg:h-[400px] 2xl:h-[500px] z-10">
        {anime.bannerImage && (
          <Image
            src={anime.bannerImage}
            alt={anime.title.romaji || "Desconocido"}
            fill
            className="object-cover w-full h-full opacity-60  [mask-image:linear-gradient(to_bottom,rgba(0,0,0,1)_70%,rgba(0,0,0,0)_100%)]"
            priority
          />
        )}
      </div> */}
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

     
    </div>
  );
}
