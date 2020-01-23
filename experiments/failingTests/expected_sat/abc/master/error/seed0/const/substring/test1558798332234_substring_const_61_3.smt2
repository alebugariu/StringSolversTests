(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str3 () String)
(assert
 (= (str.substr "0" 2 0) tmp_str3))
(check-sat)

(get-info :reason-unknown)

;tmp_str3 = 
;actual status: not_implemented
;  what():  basic_string::substr: __pos (which is 2) > this->size() (which is 1)
;*** Aborted at 1566142544 (unix time) try "date -d @1566142544" if you are using GNU date ***
;PC: @     0x7f3be5577428 gsignal
;*** SIGABRT (@0x3e80000085d) received by PID 2141 (TID 0x7f3be6b27740) from PID 2141; stack trace: ***
;    @     0x7f3be55774b0 (unknown)
;    @     0x7f3be5577428 gsignal
;    @     0x7f3be557902a abort
;    @     0x7f3be5bb184d __gnu_cxx::__verbose_terminate_handler()
;    @     0x7f3be5baf6b6 (unknown)
;    @     0x7f3be5baf701 std::terminate()
;    @     0x7f3be5baf919 __cxa_throw
;    @     0x7f3be5bd83f7 std::__throw_out_of_range_fmt()
;    @     0x7f3be5c43cf8 std::__cxx11::basic_string<>::substr()
;    @     0x7f3be645bf69 Vlab::Solver::Optimization::SubstringOptimization::visitTermConstant()
;    @     0x7f3be6521c34 Vlab::SMT::TermConstant::accept()
;    @     0x7f3be64209ad Vlab::SMT::Visitor::visit()
;    @     0x7f3be645b7e3 Vlab::Solver::Optimization::SubstringOptimization::start()
;    @     0x7f3be646e2ee Vlab::Solver::SyntacticOptimizer::visitSubString()
;    @     0x7f3be651e310 Vlab::SMT::SubString::accept()
;    @     0x7f3be64209ad Vlab::SMT::Visitor::visit()
;    @     0x7f3be647432e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7f3be64634ee Vlab::Solver::SyntacticOptimizer::visitEq()
;    @     0x7f3be651a450 Vlab::SMT::Eq::accept()
;    @     0x7f3be64209ad Vlab::SMT::Visitor::visit()
;    @     0x7f3be647432e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7f3be645d388 Vlab::Solver::SyntacticOptimizer::visitAnd()
;    @     0x7f3be6518b5c Vlab::SMT::And::accept()
;    @     0x7f3be64209ad Vlab::SMT::Visitor::visit()
;    @     0x7f3be647432e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7f3be645d0e3 Vlab::Solver::SyntacticOptimizer::visitAssert()
;    @     0x7f3be6516d2a Vlab::SMT::Assert::accept()
;    @     0x7f3be64209ad Vlab::SMT::Visitor::visit()
;    @     0x7f3be6525699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f3be6516067 Vlab::SMT::Script::visit_children()
;    @     0x7f3be64209e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f3be645d0a9 Vlab::Solver::SyntacticOptimizer::visitScript()
