(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "2" "" tmp_str2) "-12"))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = -1
;actual status: not_implemented
;PC: @     0x7f449be3fed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2422 (TID 0x7f451b22d740) from PID 0; stack trace: ***
;    @     0x7f4519c7d4b0 (unknown)
;    @     0x7f449be3fed6 dfaProject
;    @     0x7f451ac4f7ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f451ace1318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f451abd8f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f451ac25400 Vlab::SMT::Replace::accept()
;    @     0x7f451ab269ad Vlab::SMT::Visitor::visit()
;    @     0x7f451abd37f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f451ac20450 Vlab::SMT::Eq::accept()
;    @     0x7f451ab269ad Vlab::SMT::Visitor::visit()
;    @     0x7f451abd1878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f451ac125ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f451ac0996e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f451ac1eb5c Vlab::SMT::And::accept()
;    @     0x7f451ab269ad Vlab::SMT::Visitor::visit()
;    @     0x7f451ac12a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f451ac08d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f451ac1cd2a Vlab::SMT::Assert::accept()
;    @     0x7f451ab269ad Vlab::SMT::Visitor::visit()
;    @     0x7f451ac2b699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f451ac1c067 Vlab::SMT::Script::visit_children()
;    @     0x7f451ab269e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f451ac08b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f451ac1c03c Vlab::SMT::Script::accept()
;    @     0x7f451ab269ad Vlab::SMT::Visitor::visit()
;    @     0x7f451ac087bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f451ab0cb84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f4519c68830 __libc_start_main
;    @           0x40de89 _start
