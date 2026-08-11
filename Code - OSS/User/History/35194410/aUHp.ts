export type Anime = {
    id: number;
    idMal: number;
    title: {
        romaji?: string;
        english?: string;
    };
    status?: string;
    description?: string;
    startDate?: {
        year?: number;
        month?: number;
        day?: number;
    };
    endDate?: {
        year?: number;
        month?: number;
        day?: number;
    };
    season?: string;
    seasonYear?: number;
    episodes?: number;
    coverImage: {
        large: string;
        extraLarge: string;
    };
    bannerImage: string;
    meanScore: number;
    airingSchedule: {
        nodes: {
            episode: number;
            airingAt: number;
        }[];
    };
    schedule?: string;
   
    
    duration: number;
    isAdult: boolean;
    genres: string[];
    averageScore: number;
    popularity: number;
    source: string;
    nextAiringEpisode: {
        airingAt: number;
        id: number;
        episode: number;
    };
};
