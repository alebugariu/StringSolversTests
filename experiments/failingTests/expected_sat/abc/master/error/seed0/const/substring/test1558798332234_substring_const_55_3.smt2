(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str3 () String)
(assert
 (= (str.substr "0" (- 1) 0) tmp_str3))
(check-sat)

(get-info :reason-unknown)

;tmp_str3 = 
;actual status: not_implemented
;  what():  basic_string::substr: __pos (which is 18446744073709551615) > this->size() (which is 1)
;*** Aborted at 1566142548 (unix time) try "date -d @1566142548" if you are using GNU date ***
;PC: @     0x7efec0cb6428 gsignal
;*** SIGABRT (@0x3e800000883) received by PID 2179 (TID 0x7efec2266740) from PID 2179; stack trace: ***
;    @     0x7efec0cb64b0 (unknown)
;    @     0x7efec0cb6428 gsignal
;    @     0x7efec0cb802a abort
;    @     0x7efec12f084d __gnu_cxx::__verbose_terminate_handler()
;    @     0x7efec12ee6b6 (unknown)
;    @     0x7efec12ee701 std::terminate()
;    @     0x7efec12ee919 __cxa_throw
;    @     0x7efec13173f7 std::__throw_out_of_range_fmt()
;    @     0x7efec1382cf8 std::__cxx11::basic_string<>::substr()
;    @     0x7efec1b9af69 Vlab::Solver::Optimization::SubstringOptimization::visitTermConstant()
;    @     0x7efec1c60c34 Vlab::SMT::TermConstant::accept()
;    @     0x7efec1b5f9ad Vlab::SMT::Visitor::visit()
;    @     0x7efec1b9a7e3 Vlab::Solver::Optimization::SubstringOptimization::start()
;    @     0x7efec1bad2ee Vlab::Solver::SyntacticOptimizer::visitSubString()
;    @     0x7efec1c5d310 Vlab::SMT::SubString::accept()
;    @     0x7efec1b5f9ad Vlab::SMT::Visitor::visit()
;    @     0x7efec1bb332e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7efec1ba24ee Vlab::Solver::SyntacticOptimizer::visitEq()
;    @     0x7efec1c59450 Vlab::SMT::Eq::accept()
;    @     0x7efec1b5f9ad Vlab::SMT::Visitor::visit()
;    @     0x7efec1bb332e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7efec1b9c388 Vlab::Solver::SyntacticOptimizer::visitAnd()
;    @     0x7efec1c57b5c Vlab::SMT::And::accept()
;    @     0x7efec1b5f9ad Vlab::SMT::Visitor::visit()
;    @     0x7efec1bb332e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7efec1b9c0e3 Vlab::Solver::SyntacticOptimizer::visitAssert()
;    @     0x7efec1c55d2a Vlab::SMT::Assert::accept()
;    @     0x7efec1b5f9ad Vlab::SMT::Visitor::visit()
;    @     0x7efec1c64699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7efec1c55067 Vlab::SMT::Script::visit_children()
;    @     0x7efec1b5f9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7efec1b9c0a9 Vlab::Solver::SyntacticOptimizer::visitScript()
