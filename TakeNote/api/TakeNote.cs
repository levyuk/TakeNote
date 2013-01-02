using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace TakeNote.api
{
    public class TakeNoteController : ApiController
    {
        [AcceptVerbs("GET")]
        public List<string> GetNotes()
        {
            return new List<string>()
            {
                "A test note",
                "Another test note"
            };
        }
    }
}