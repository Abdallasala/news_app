class SourcesModels {
  final String status ;
final List<Source> sources;
  SourcesModels({required this.status, required this.sources});
  factory  SourcesModels.fromjson(Map<String ,dynamic> json){
    return SourcesModels(status: json['status'], 
        sources:( json['sources']as List).map((e)=>Source.fromjson(e)).toList());

  }



}
class Source{
  final String id ;
  final String name ;

  Source({required this.id,
          required this.name});

  factory Source.fromjson(Map<String ,dynamic> json){
   return Source (
     id: json['id'],
     name : json['name']
   );
 }
}