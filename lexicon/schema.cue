package lexicon

#Schema: {
  lexicon: 1
  id!: string
  revision?: int
  description?: string

  defs: [string]: {...}
}

Lexicon: #Schema & {
  lexicon: 1
  id: "com.atproto.lexicon.schema"

  defs: {
    // "Representation of Lexicon schemas themselves, when published as atproto records. Note that the schema language is not defined in Lexicon; this meta schema currently only includes a single version field ('lexicon'). See the atproto specifications for description of the other expected top-level fields ('id', 'defs', etc).",
    main: {
      type: "record"
      key: "nsid"
      record: {
        // Indicates the 'version' of the Lexicon language. Must be '1' for the current atproto/Lexicon schema system.
        lexicon: 1
      }
    }
  }
}