//Solution goes in Sources
typealias Codon = String
typealias AminoAcid = String

let proteins: [Codon: AminoAcid] = [
  "AUG": "Methionine",
  "UUU": "Phenylalanine",
  "UUC": "Phenylalanine",
  "UUA": "Leucine",
  "UUG": "Leucine",
  "UCU": "Serine",
  "UCC": "Serine",
  "UCA": "Serine",
  "UCG": "Serine",
  "UAU": "Tyrosine",
  "UAC": "Tyrosine",
  "UGU": "Cysteine",
  "UGC": "Cysteine",
  "UGG": "Tryptophan",
  "UAA": "STOP",
  "UAG": "STOP",
  "UGA": "STOP"]

enum CodonError: Error {
  case invalid
}

func translationOfCodon(_ str: Codon) throws -> AminoAcid {
  guard proteins.keys.contains(str) else {
    throw CodonError.invalid
  }
  return proteins[str]!
}

func translationOfRNA(_ str: String) throws -> [AminoAcid] {
  let letters = Array(str)
  var result = [String]()
  
  for i in stride(from: 0, to: str.count, by: 3) {
    let value = letters[i...i+2]
    if let codon = try? translationOfCodon(String(value)) {
      if codon != "STOP" {
        result.append(codon)
      } else {
        return result
      }
    } else {
      throw CodonError.invalid
    }
  }
  return result
}
