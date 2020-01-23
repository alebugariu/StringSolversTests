(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace tmp_str0 "" tmp_str2) "-1-1"))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = -1
;tmp_str2 = -1
;actual status: not_implemented
;PC: @     0x7f7811cebed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2315 (TID 0x7f78910d9740) from PID 0; stack trace: ***
;    @     0x7f788fb294b0 (unknown)
;    @     0x7f7811cebed6 dfaProject
;    @     0x7f7890afb7ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f7890b8d318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f7890a84f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f7890ad1400 Vlab::SMT::Replace::accept()
;    @     0x7f78909d29ad Vlab::SMT::Visitor::visit()
;    @     0x7f7890a7f7f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f7890acc450 Vlab::SMT::Eq::accept()
;    @     0x7f78909d29ad Vlab::SMT::Visitor::visit()
;    @     0x7f7890a7d878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f7890abe5ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f7890ab596e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f7890acab5c Vlab::SMT::And::accept()
;    @     0x7f78909d29ad Vlab::SMT::Visitor::visit()
;    @     0x7f7890abea82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f7890ab4d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f7890ac8d2a Vlab::SMT::Assert::accept()
;    @     0x7f78909d29ad Vlab::SMT::Visitor::visit()
;    @     0x7f7890ad7699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f7890ac8067 Vlab::SMT::Script::visit_children()
;    @     0x7f78909d29e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f7890ab4b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f7890ac803c Vlab::SMT::Script::accept()
;    @     0x7f78909d29ad Vlab::SMT::Visitor::visit()
;    @     0x7f7890ab47bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f78909b8b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f788fb14830 __libc_start_main
;    @           0x40de89 _start
