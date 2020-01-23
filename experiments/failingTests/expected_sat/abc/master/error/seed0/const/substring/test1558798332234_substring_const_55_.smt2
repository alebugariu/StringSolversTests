(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (str.substr "0" (- 1) 0) ""))
(check-sat)

(get-info :reason-unknown)
;actual status: not_implemented
;  what():  basic_string::substr: __pos (which is 18446744073709551615) > this->size() (which is 1)
;*** Aborted at 1566142545 (unix time) try "date -d @1566142545" if you are using GNU date ***
;PC: @     0x7fa14aaf6428 gsignal
;*** SIGABRT (@0x3e800000861) received by PID 2145 (TID 0x7fa14c0a6740) from PID 2145; stack trace: ***
;    @     0x7fa14aaf64b0 (unknown)
;    @     0x7fa14aaf6428 gsignal
;    @     0x7fa14aaf802a abort
;    @     0x7fa14b13084d __gnu_cxx::__verbose_terminate_handler()
;    @     0x7fa14b12e6b6 (unknown)
;    @     0x7fa14b12e701 std::terminate()
;    @     0x7fa14b12e919 __cxa_throw
;    @     0x7fa14b1573f7 std::__throw_out_of_range_fmt()
;    @     0x7fa14b1c2cf8 std::__cxx11::basic_string<>::substr()
;    @     0x7fa14b9daf69 Vlab::Solver::Optimization::SubstringOptimization::visitTermConstant()
;    @     0x7fa14baa0c34 Vlab::SMT::TermConstant::accept()
;    @     0x7fa14b99f9ad Vlab::SMT::Visitor::visit()
;    @     0x7fa14b9da7e3 Vlab::Solver::Optimization::SubstringOptimization::start()
;    @     0x7fa14b9ed2ee Vlab::Solver::SyntacticOptimizer::visitSubString()
;    @     0x7fa14ba9d310 Vlab::SMT::SubString::accept()
;    @     0x7fa14b99f9ad Vlab::SMT::Visitor::visit()
;    @     0x7fa14b9f332e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7fa14b9e24ee Vlab::Solver::SyntacticOptimizer::visitEq()
;    @     0x7fa14ba99450 Vlab::SMT::Eq::accept()
;    @     0x7fa14b99f9ad Vlab::SMT::Visitor::visit()
;    @     0x7fa14b9f332e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7fa14b9dc388 Vlab::Solver::SyntacticOptimizer::visitAnd()
;    @     0x7fa14ba97b5c Vlab::SMT::And::accept()
;    @     0x7fa14b99f9ad Vlab::SMT::Visitor::visit()
;    @     0x7fa14b9f332e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7fa14b9dc0e3 Vlab::Solver::SyntacticOptimizer::visitAssert()
;    @     0x7fa14ba95d2a Vlab::SMT::Assert::accept()
;    @     0x7fa14b99f9ad Vlab::SMT::Visitor::visit()
;    @     0x7fa14baa4699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fa14ba95067 Vlab::SMT::Script::visit_children()
;    @     0x7fa14b99f9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fa14b9dc0a9 Vlab::Solver::SyntacticOptimizer::visitScript()
