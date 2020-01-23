(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str3 () String)
(assert
 (= (str.substr "2" 2 0) tmp_str3))
(check-sat)

(get-info :reason-unknown)

;tmp_str3 = 
;actual status: not_implemented
;  what():  basic_string::substr: __pos (which is 2) > this->size() (which is 1)
;*** Aborted at 1566142546 (unix time) try "date -d @1566142546" if you are using GNU date ***
;PC: @     0x7f1624c22428 gsignal
;*** SIGABRT (@0x3e80000086b) received by PID 2155 (TID 0x7f16261d2740) from PID 2155; stack trace: ***
;    @     0x7f1624c224b0 (unknown)
;    @     0x7f1624c22428 gsignal
;    @     0x7f1624c2402a abort
;    @     0x7f162525c84d __gnu_cxx::__verbose_terminate_handler()
;    @     0x7f162525a6b6 (unknown)
;    @     0x7f162525a701 std::terminate()
;    @     0x7f162525a919 __cxa_throw
;    @     0x7f16252833f7 std::__throw_out_of_range_fmt()
;    @     0x7f16252eecf8 std::__cxx11::basic_string<>::substr()
;    @     0x7f1625b06f69 Vlab::Solver::Optimization::SubstringOptimization::visitTermConstant()
;    @     0x7f1625bccc34 Vlab::SMT::TermConstant::accept()
;    @     0x7f1625acb9ad Vlab::SMT::Visitor::visit()
;    @     0x7f1625b067e3 Vlab::Solver::Optimization::SubstringOptimization::start()
;    @     0x7f1625b192ee Vlab::Solver::SyntacticOptimizer::visitSubString()
;    @     0x7f1625bc9310 Vlab::SMT::SubString::accept()
;    @     0x7f1625acb9ad Vlab::SMT::Visitor::visit()
;    @     0x7f1625b1f32e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7f1625b0e4ee Vlab::Solver::SyntacticOptimizer::visitEq()
;    @     0x7f1625bc5450 Vlab::SMT::Eq::accept()
;    @     0x7f1625acb9ad Vlab::SMT::Visitor::visit()
;    @     0x7f1625b1f32e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7f1625b08388 Vlab::Solver::SyntacticOptimizer::visitAnd()
;    @     0x7f1625bc3b5c Vlab::SMT::And::accept()
;    @     0x7f1625acb9ad Vlab::SMT::Visitor::visit()
;    @     0x7f1625b1f32e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7f1625b080e3 Vlab::Solver::SyntacticOptimizer::visitAssert()
;    @     0x7f1625bc1d2a Vlab::SMT::Assert::accept()
;    @     0x7f1625acb9ad Vlab::SMT::Visitor::visit()
;    @     0x7f1625bd0699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f1625bc1067 Vlab::SMT::Script::visit_children()
;    @     0x7f1625acb9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f1625b080a9 Vlab::Solver::SyntacticOptimizer::visitScript()
