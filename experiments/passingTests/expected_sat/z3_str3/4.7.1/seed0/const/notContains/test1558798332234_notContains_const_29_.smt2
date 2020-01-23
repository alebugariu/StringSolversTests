(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1687 (str.contains "\n" "2")))
 (= $x1687 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
