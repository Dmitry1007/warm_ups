function rotator(word, comparison){
  if(word.length !== comparison.length){
    console.log("Words are of different lengths");
  }else{
    var output = (word + word).includes(comparison)
    console.log(output)
  }
}

// rotator("apple", "appl")
// rotator("apple", "apple")
// rotator("apple", "pplea")
// rotator("apple", "applz")
