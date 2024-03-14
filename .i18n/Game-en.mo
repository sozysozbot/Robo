��          4      L       `     a   �  s    
     '     0                    
`assumption` sucht nach einer Annahme, die genau dem Goal entspricht.

## Beispiel

`assumption` sucht durch die Annahmen und merkt dass `h` genau mit dem Goal übereinstimmt.

```
Objekte
  a b c d : ℕ
  h : a + b = c
  g : a * b = 16
  t : c = 12
Goal
  a + b = c
```
 
`induction n` führt einen Induktionsbeweis über `n`.

## Detail

Diese Taktik erstellt zwei Goals:
* Induktionsanfang, wo `n = 0` ersetzt wird.
* Induktionsschritt, in dem man die Induktionshypothese `n_ih` zur Verfügung hat.

## Modifikationen in diesem Spiel

* `induction n with d hd` benennt Induktionsvariable und -hypothese. (das ist Lean3-Syntax)
und funktioniert ausserhalb vom Spiel nicht genau so.
* Ausserhalb des Spiels kriegst du `Nat.zero` und `Nat.succ n` anstatt `0` und `n + 1`
als Fälle. Diese
Terme sind DefEq, aber manchmal benötigt man die lemmas `zero_eq` und `Nat.succ_eq_add_one`
um zwischen den schreibweisen zu wechseln

Der richtige Lean4-Syntax für `with` streckt sich über mehrere Zeilen und ist:

```
induction n with
| zero =>
  sorry
| succ m m_ih =>
  sorry
```

da dieser sich über mehrere Zeilen erstreckt wird er im Spiel nicht eingeführt.

## Hifreiche Resultate

* `Nat.succ_eq_add_one`: schreibt `n.succ = n + 1` um.
* `Nat.zero_eq`: schreibt `Nat.zero = 0` um.

Beide sind DefEq, aber manche Taktiken können nicht damit umgehen

* Siehe Definition `∑` für Hilfe mit Induktion über Summen.
* `rcases n` ist sehr ähnlich zu `induction n`. Der Unterschied ist, dass bei
`rcases` keine Induktionshypothese im Fall `n + 1` zur Verfügung steht.

## Beispiel

```
example (n : ℕ) : 4 ∣ 5^n + 7 := by
  induction n
  sorry      -- Fall `n = 0`
  sorry      -- Fall `n + 1`
```
 Project-Id-Version: Game v4.6.0
Report-Msgid-Bugs-To: 
PO-Revision-Date: 
Last-Translator: 
Language-Team: none
Language: en
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
X-Generator: Poedit 3.0.1
 sdfasdf
 asdfasdfaf
 