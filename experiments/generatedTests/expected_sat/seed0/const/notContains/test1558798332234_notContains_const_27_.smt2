(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x823 (str.contains "\n" "-1")))
 (= $x823 false)))
(check-sat)

(get-info :reason-unknown)



