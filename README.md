# ContentDB

`contentdb` is a [document store](https://en.wikipedia.org/wiki/Document-oriented_database) database library that is similar to [CouchDB](https://en.wikipedia.org/wiki/Apache_CouchDB) and [MongoDB](https://en.wikipedia.org/wiki/MongoDB).

This project follows the general "[NoSQL](https://en.wikipedia.org/wiki/NoSQL)" trend away from table-oriented databases, usually toward document-oriented or otherwise graph-oriented.  It will also support outline-oriented databses, like [OPML](https://en.wikipedia.org/wiki/OPML), which facilitate great data management interfaces, like [WorkFlowy](http://workflowy.com) and [OmniOutliner](https://www.omnigroup.com/omnioutliner/).

What makes ContentDB significantly different from other databases is that it uses a [file](https://en.wikipedia.org/wiki/Computer_file) to store each "record", called a document, in a specified format.  This is similar to [RDF](https://en.wikipedia.org/wiki/Resource_Description_Framework)-style [XML databases](https://en.wikipedia.org/wiki/XML_database).

With this approach, you can easily manage your data storage, retreival, and other metadata storage and retrieval as well.  You can easily do version control for history tracking and easy deployment.  Relationships are easy to represent using reference fields.  See  and [Pelican](https://github.com/getpelican/pelican) and [Grav](https://getgrav.org/) for other similar systems, more so Pelican because of its [pelican reference plugin](https://github.com/mitchtbaum/pelican_reference).

To massively improve performance and scalability, [Tantivy](https://github.com/tantivy-search/tantivy) integration can provide immediate indexing and querying.  This is the same as [materialized views](https://en.wikipedia.org/wiki/Materialized_view) and mongo collections.

## Format

ContentDB combines one structured and one unstructured data format.  Headers use [SCL](https://github.com/Keats/scl), and bodies use [Markdown](https://en.wikipedia.org/wiki/Markdown) or Lua.

Header field values provide a mechanism to represent attributes of world entities in virtual document texts.  Relationship fields work by using the target's model for its field.  You can see this implemented in Python in the pelican plugin above.

Default ID is UUIDv4, but this will soon shift to [NanoID](https://github.com/ai/nanoid).  See https://github.com/foundpatterns/contentdb-lua/issues/17

Short names are a missing feature.  https://github.com/foundpatterns/contentdb-lua/issues/12

Model documents started by following some json document schema or something, forgot which schema

Stores are folders with documents from a single source.
