(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (str.substr "\"a\"" (- 1) 2) ""))
(check-sat)

(get-info :reason-unknown)
;actual status: not_implemented
;  what():  basic_string::substr: __pos (which is 18446744073709551615) > this->size() (which is 3)
;*** Aborted at 1566142544 (unix time) try "date -d @1566142544" if you are using GNU date ***
;PC: @     0x7fea10f99428 gsignal
;*** SIGABRT (@0x3e80000085b) received by PID 2139 (TID 0x7fea12549740) from PID 2139; stack trace: ***
;    @     0x7fea10f994b0 (unknown)
;    @     0x7fea10f99428 gsignal
;    @     0x7fea10f9b02a abort
;    @     0x7fea115d384d __gnu_cxx::__verbose_terminate_handler()
;    @     0x7fea115d16b6 (unknown)
;    @     0x7fea115d1701 std::terminate()
;    @     0x7fea115d1919 __cxa_throw
;    @     0x7fea115fa3f7 std::__throw_out_of_range_fmt()
;    @     0x7fea11665cf8 std::__cxx11::basic_string<>::substr()
;    @     0x7fea11e7df69 Vlab::Solver::Optimization::SubstringOptimization::visitTermConstant()
;    @     0x7fea11f43c34 Vlab::SMT::TermConstant::accept()
;    @     0x7fea11e429ad Vlab::SMT::Visitor::visit()
;    @     0x7fea11e7d7e3 Vlab::Solver::Optimization::SubstringOptimization::start()
;    @     0x7fea11e902ee Vlab::Solver::SyntacticOptimizer::visitSubString()
;    @     0x7fea11f40310 Vlab::SMT::SubString::accept()
;    @     0x7fea11e429ad Vlab::SMT::Visitor::visit()
;    @     0x7fea11e9632e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7fea11e854ee Vlab::Solver::SyntacticOptimizer::visitEq()
;    @     0x7fea11f3c450 Vlab::SMT::Eq::accept()
;    @     0x7fea11e429ad Vlab::SMT::Visitor::visit()
;    @     0x7fea11e9632e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7fea11e7f388 Vlab::Solver::SyntacticOptimizer::visitAnd()
;    @     0x7fea11f3ab5c Vlab::SMT::And::accept()
;    @     0x7fea11e429ad Vlab::SMT::Visitor::visit()
;    @     0x7fea11e9632e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7fea11e7f0e3 Vlab::Solver::SyntacticOptimizer::visitAssert()
;    @     0x7fea11f38d2a Vlab::SMT::Assert::accept()
;    @     0x7fea11e429ad Vlab::SMT::Visitor::visit()
;    @     0x7fea11f47699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fea11f38067 Vlab::SMT::Script::visit_children()
;    @     0x7fea11e429e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fea11e7f0a9 Vlab::Solver::SyntacticOptimizer::visitScript()
