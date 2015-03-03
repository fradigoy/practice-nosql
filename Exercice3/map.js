map = function(){
	emit(this.name.split(" ")[1], 1);
};

reduce = function(key, values){
	return Array.sum(values);
};

db.characters.mapReduce( map, reduce, {
	out: "name_count"
});



db.name_count.find();