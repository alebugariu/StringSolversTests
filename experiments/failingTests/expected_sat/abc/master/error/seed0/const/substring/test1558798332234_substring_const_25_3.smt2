(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str3 () String)
(assert
 (= (str.substr "a" 2 0) tmp_str3))
(check-sat)

(get-info :reason-unknown)

;tmp_str3 = 
;actual status: not_implemented
;  what():  basic_string::substr: __pos (which is 2) > this->size() (which is 1)
;*** Aborted at 1566142548 (unix time) try "date -d @1566142548" if you are using GNU date ***
;PC: @     0x7f9fa51cc428 gsignal
;*** SIGABRT (@0x3e800000881) received by PID 2177 (TID 0x7f9fa677c740) from PID 2177; stack trace: ***
;    @     0x7f9fa51cc4b0 (unknown)
;    @     0x7f9fa51cc428 gsignal
;    @     0x7f9fa51ce02a abort
;    @     0x7f9fa580684d __gnu_cxx::__verbose_terminate_handler()
;    @     0x7f9fa58046b6 (unknown)
;    @     0x7f9fa5804701 std::terminate()
;    @     0x7f9fa5804919 __cxa_throw
;    @     0x7f9fa582d3f7 std::__throw_out_of_range_fmt()
;    @     0x7f9fa5898cf8 std::__cxx11::basic_string<>::substr()
;    @     0x7f9fa60b0f69 Vlab::Solver::Optimization::SubstringOptimization::visitTermConstant()
;    @     0x7f9fa6176c34 Vlab::SMT::TermConstant::accept()
;    @     0x7f9fa60759ad Vlab::SMT::Visitor::visit()
;    @     0x7f9fa60b07e3 Vlab::Solver::Optimization::SubstringOptimization::start()
;    @     0x7f9fa60c32ee Vlab::Solver::SyntacticOptimizer::visitSubString()
;    @     0x7f9fa6173310 Vlab::SMT::SubString::accept()
;    @     0x7f9fa60759ad Vlab::SMT::Visitor::visit()
;    @     0x7f9fa60c932e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7f9fa60b84ee Vlab::Solver::SyntacticOptimizer::visitEq()
;    @     0x7f9fa616f450 Vlab::SMT::Eq::accept()
;    @     0x7f9fa60759ad Vlab::SMT::Visitor::visit()
;    @     0x7f9fa60c932e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7f9fa60b2388 Vlab::Solver::SyntacticOptimizer::visitAnd()
;    @     0x7f9fa616db5c Vlab::SMT::And::accept()
;    @     0x7f9fa60759ad Vlab::SMT::Visitor::visit()
;    @     0x7f9fa60c932e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7f9fa60b20e3 Vlab::Solver::SyntacticOptimizer::visitAssert()
;    @     0x7f9fa616bd2a Vlab::SMT::Assert::accept()
;    @     0x7f9fa60759ad Vlab::SMT::Visitor::visit()
;    @     0x7f9fa617a699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f9fa616b067 Vlab::SMT::Script::visit_children()
;    @     0x7f9fa60759e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f9fa60b20a9 Vlab::Solver::SyntacticOptimizer::visitScript()
