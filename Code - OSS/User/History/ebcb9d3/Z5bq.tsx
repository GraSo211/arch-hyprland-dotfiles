
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
