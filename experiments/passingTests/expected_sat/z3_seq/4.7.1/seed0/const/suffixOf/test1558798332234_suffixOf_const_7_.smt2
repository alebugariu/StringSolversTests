(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1215 (str.suffixof "" "2")))
 (= $x1215 true)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
