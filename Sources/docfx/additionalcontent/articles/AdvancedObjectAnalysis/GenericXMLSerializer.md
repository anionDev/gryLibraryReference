# GenericXMLSerializer

GenericXMLSerializer is a simple way to serialize objects in an XML-document.
`GenericXMLSerializer` has some special properties/features. `GenericXMLSerializer`
- can handle cyclic attribute-references
- can obviously be edited in a plain texteditor (because it is XML)

When you want so XML-serialize an object you have a problem when your data have cyclic attribute-references.
Since XML is a hierarchy you can not use XML (or JSON or something similar) so serialize these objects.
This is bad because XML has many positive properties and it would be nice to be able to XML-serialize cyclic objects.
`GenericXMLSerializer` allows exactly this by serialize your object in another way than a "normal" XMLSerializer would do. 
