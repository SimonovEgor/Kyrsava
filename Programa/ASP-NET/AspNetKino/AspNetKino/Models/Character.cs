using System;
using System.Collections.Generic;

namespace AspNetKino.Models
{
    public partial class Character
    {
        public int IdCharacters { get; set; }
        public string? CharactersName { get; set; }
        public string? CharactersOpisanie { get; set; }
        public string? CharactersVoiceActor { get; set; }
        public string? CharactersCinemaName { get; set; }
        public string? CharactersImage { get; set; }
    }
}
