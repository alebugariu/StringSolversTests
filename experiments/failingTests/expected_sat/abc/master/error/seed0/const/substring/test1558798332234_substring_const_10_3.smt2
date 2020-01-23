(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str3 () String)
(assert
 (= (str.substr "\"a\"" (- 1) 0) tmp_str3))
(check-sat)

(get-info :reason-unknown)

;tmp_str3 = 
;actual status: not_implemented
;  what():  basic_string::substr: __pos (which is 18446744073709551615) > this->size() (which is 3)
;*** Aborted at 1566142544 (unix time) try "date -d @1566142544" if you are using GNU date ***
;PC: @     0x7fb122bdf428 gsignal
;*** SIGABRT (@0x3e800000857) received by PID 2135 (TID 0x7fb12418f740) from PID 2135; stack trace: ***
;    @     0x7fb122bdf4b0 (unknown)
;    @     0x7fb122bdf428 gsignal
;    @     0x7fb122be102a abort
;    @     0x7fb12321984d __gnu_cxx::__verbose_terminate_handler()
;    @     0x7fb1232176b6 (unknown)
;    @     0x7fb123217701 std::terminate()
;    @     0x7fb123217919 __cxa_throw
;    @     0x7fb1232403f7 std::__throw_out_of_range_fmt()
;    @     0x7fb1232abcf8 std::__cxx11::basic_string<>::substr()
;    @     0x7fb123ac3f69 Vlab::Solver::Optimization::SubstringOptimization::visitTermConstant()
;    @     0x7fb123b89c34 Vlab::SMT::TermConstant::accept()
;    @     0x7fb123a889ad Vlab::SMT::Visitor::visit()
;    @     0x7fb123ac37e3 Vlab::Solver::Optimization::SubstringOptimization::start()
;    @     0x7fb123ad62ee Vlab::Solver::SyntacticOptimizer::visitSubString()
;    @     0x7fb123b86310 Vlab::SMT::SubString::accept()
;    @     0x7fb123a889ad Vlab::SMT::Visitor::visit()
;    @     0x7fb123adc32e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7fb123acb4ee Vlab::Solver::SyntacticOptimizer::visitEq()
;    @     0x7fb123b82450 Vlab::SMT::Eq::accept()
;    @     0x7fb123a889ad Vlab::SMT::Visitor::visit()
;    @     0x7fb123adc32e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7fb123ac5388 Vlab::Solver::SyntacticOptimizer::visitAnd()
;    @     0x7fb123b80b5c Vlab::SMT::And::accept()
;    @     0x7fb123a889ad Vlab::SMT::Visitor::visit()
;    @     0x7fb123adc32e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7fb123ac50e3 Vlab::Solver::SyntacticOptimizer::visitAssert()
;    @     0x7fb123b7ed2a Vlab::SMT::Assert::accept()
;    @     0x7fb123a889ad Vlab::SMT::Visitor::visit()
;    @     0x7fb123b8d699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fb123b7e067 Vlab::SMT::Script::visit_children()
;    @     0x7fb123a889e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fb123ac50a9 Vlab::Solver::SyntacticOptimizer::visitScript()
