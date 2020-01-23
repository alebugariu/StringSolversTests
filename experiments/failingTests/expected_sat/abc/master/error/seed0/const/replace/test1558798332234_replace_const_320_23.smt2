(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str3 () String)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "-1" "" tmp_str2) tmp_str3))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = 
;tmp_str3 = -1
;actual status: not_implemented
;PC: @     0x7fc19074ded6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2435 (TID 0x7fc20fb3b740) from PID 0; stack trace: ***
;    @     0x7fc20e58b4b0 (unknown)
;    @     0x7fc19074ded6 dfaProject
;    @     0x7fc20f55d7ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7fc20f5ef318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7fc20f4e6f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7fc20f533400 Vlab::SMT::Replace::accept()
;    @     0x7fc20f4349ad Vlab::SMT::Visitor::visit()
;    @     0x7fc20f4e17f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7fc20f52e450 Vlab::SMT::Eq::accept()
;    @     0x7fc20f4349ad Vlab::SMT::Visitor::visit()
;    @     0x7fc20f4df878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7fc20f5205ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7fc20f51796e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fc20f52cb5c Vlab::SMT::And::accept()
;    @     0x7fc20f4349ad Vlab::SMT::Visitor::visit()
;    @     0x7fc20f520a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fc20f516d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fc20f52ad2a Vlab::SMT::Assert::accept()
;    @     0x7fc20f4349ad Vlab::SMT::Visitor::visit()
;    @     0x7fc20f539699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fc20f52a067 Vlab::SMT::Script::visit_children()
;    @     0x7fc20f4349e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fc20f516b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7fc20f52a03c Vlab::SMT::Script::accept()
;    @     0x7fc20f4349ad Vlab::SMT::Visitor::visit()
;    @     0x7fc20f5167bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7fc20f41ab84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7fc20e576830 __libc_start_main
;    @           0x40de89 _start
