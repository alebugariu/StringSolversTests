(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (str.substr "a" 2 0) ""))
(check-sat)

(get-info :reason-unknown)
;actual status: not_implemented
;  what():  basic_string::substr: __pos (which is 2) > this->size() (which is 1)
;*** Aborted at 1566142544 (unix time) try "date -d @1566142544" if you are using GNU date ***
;PC: @     0x7fa5df274428 gsignal
;*** SIGABRT (@0x3e800000859) received by PID 2137 (TID 0x7fa5e0824740) from PID 2137; stack trace: ***
;    @     0x7fa5df2744b0 (unknown)
;    @     0x7fa5df274428 gsignal
;    @     0x7fa5df27602a abort
;    @     0x7fa5df8ae84d __gnu_cxx::__verbose_terminate_handler()
;    @     0x7fa5df8ac6b6 (unknown)
;    @     0x7fa5df8ac701 std::terminate()
;    @     0x7fa5df8ac919 __cxa_throw
;    @     0x7fa5df8d53f7 std::__throw_out_of_range_fmt()
;    @     0x7fa5df940cf8 std::__cxx11::basic_string<>::substr()
;    @     0x7fa5e0158f69 Vlab::Solver::Optimization::SubstringOptimization::visitTermConstant()
;    @     0x7fa5e021ec34 Vlab::SMT::TermConstant::accept()
;    @     0x7fa5e011d9ad Vlab::SMT::Visitor::visit()
;    @     0x7fa5e01587e3 Vlab::Solver::Optimization::SubstringOptimization::start()
;    @     0x7fa5e016b2ee Vlab::Solver::SyntacticOptimizer::visitSubString()
;    @     0x7fa5e021b310 Vlab::SMT::SubString::accept()
;    @     0x7fa5e011d9ad Vlab::SMT::Visitor::visit()
;    @     0x7fa5e017132e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7fa5e01604ee Vlab::Solver::SyntacticOptimizer::visitEq()
;    @     0x7fa5e0217450 Vlab::SMT::Eq::accept()
;    @     0x7fa5e011d9ad Vlab::SMT::Visitor::visit()
;    @     0x7fa5e017132e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7fa5e015a388 Vlab::Solver::SyntacticOptimizer::visitAnd()
;    @     0x7fa5e0215b5c Vlab::SMT::And::accept()
;    @     0x7fa5e011d9ad Vlab::SMT::Visitor::visit()
;    @     0x7fa5e017132e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7fa5e015a0e3 Vlab::Solver::SyntacticOptimizer::visitAssert()
;    @     0x7fa5e0213d2a Vlab::SMT::Assert::accept()
;    @     0x7fa5e011d9ad Vlab::SMT::Visitor::visit()
;    @     0x7fa5e0222699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fa5e0213067 Vlab::SMT::Script::visit_children()
;    @     0x7fa5e011d9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fa5e015a0a9 Vlab::Solver::SyntacticOptimizer::visitScript()
