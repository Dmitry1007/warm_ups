function rotator(word, comparison){
  if(word.length !== comparison.length){
    console.log("Words are of different lengths");
  }else if (word === comparison){
    console.log("Yes");
  }else {
    for(var counter = 0; counter < word.length; counter++){
      var comparison = (comparison + comparison[0]).substr(1)
      if(word === comparison){
        console.log("Yes after " + counter + " rotations");
        break;
      }else{
        console.log("No after rotation " + counter);
      };
    };
  };
};

// rotator("apple", "apple")
// rotator("apple", "pplea")
// rotator("apple", "pleap")
rotator("apple", "applz")
