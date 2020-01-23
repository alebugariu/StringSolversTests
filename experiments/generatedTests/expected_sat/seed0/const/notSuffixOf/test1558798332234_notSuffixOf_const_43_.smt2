(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x512 (str.suffixof "2" """a""")))
 (= $x512 false)))
(check-sat)

(get-info :reason-unknown)



