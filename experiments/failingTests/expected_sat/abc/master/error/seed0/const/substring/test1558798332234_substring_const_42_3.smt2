(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str3 () String)
(assert
 (= (str.substr "\n" 2 (- 1)) tmp_str3))
(check-sat)

(get-info :reason-unknown)

;tmp_str3 = 
;actual status: not_implemented
;  what():  stoi
;*** Aborted at 1566142546 (unix time) try "date -d @1566142546" if you are using GNU date ***
;PC: @     0x7ffbce271428 gsignal
;*** SIGABRT (@0x3e800000873) received by PID 2163 (TID 0x7ffbcf821740) from PID 2163; stack trace: ***
;    @     0x7ffbce2714b0 (unknown)
;    @     0x7ffbce271428 gsignal
;    @     0x7ffbce27302a abort
;    @     0x7ffbce8ab84d __gnu_cxx::__verbose_terminate_handler()
;    @     0x7ffbce8a96b6 (unknown)
;    @     0x7ffbce8a9701 std::terminate()
;    @     0x7ffbce8a9919 __cxa_throw
;    @     0x7ffbce8d22cf std::__throw_out_of_range()
;    @           0x41244f __gnu_cxx::__stoa<>()
;    @           0x411bc6 std::__cxx11::stoi()
;    @     0x7ffbcf1687f5 Vlab::Solver::SyntacticOptimizer::visitSubString()
;    @     0x7ffbcf218310 Vlab::SMT::SubString::accept()
;    @     0x7ffbcf11a9ad Vlab::SMT::Visitor::visit()
;    @     0x7ffbcf16e32e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7ffbcf15d4ee Vlab::Solver::SyntacticOptimizer::visitEq()
;    @     0x7ffbcf214450 Vlab::SMT::Eq::accept()
;    @     0x7ffbcf11a9ad Vlab::SMT::Visitor::visit()
;    @     0x7ffbcf16e32e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7ffbcf157388 Vlab::Solver::SyntacticOptimizer::visitAnd()
;    @     0x7ffbcf212b5c Vlab::SMT::And::accept()
;    @     0x7ffbcf11a9ad Vlab::SMT::Visitor::visit()
;    @     0x7ffbcf16e32e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7ffbcf1570e3 Vlab::Solver::SyntacticOptimizer::visitAssert()
;    @     0x7ffbcf210d2a Vlab::SMT::Assert::accept()
;    @     0x7ffbcf11a9ad Vlab::SMT::Visitor::visit()
;    @     0x7ffbcf21f699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7ffbcf210067 Vlab::SMT::Script::visit_children()
;    @     0x7ffbcf11a9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7ffbcf1570a9 Vlab::Solver::SyntacticOptimizer::visitScript()
;    @     0x7ffbcf21003c Vlab::SMT::Script::accept()
;    @     0x7ffbcf11a9ad Vlab::SMT::Visitor::visit()
;    @     0x7ffbcf156ed5 Vlab::Solver::SyntacticOptimizer::start()
