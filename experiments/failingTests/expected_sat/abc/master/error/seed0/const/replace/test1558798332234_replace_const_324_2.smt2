(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "-1" "" tmp_str2) "\n-1"))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = \n
;actual status: not_implemented
;PC: @     0x7f6c4efb1ed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2276 (TID 0x7f6cce39f740) from PID 0; stack trace: ***
;    @     0x7f6cccdef4b0 (unknown)
;    @     0x7f6c4efb1ed6 dfaProject
;    @     0x7f6ccddc17ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f6ccde53318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f6ccdd4af05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f6ccdd97400 Vlab::SMT::Replace::accept()
;    @     0x7f6ccdc989ad Vlab::SMT::Visitor::visit()
;    @     0x7f6ccdd457f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f6ccdd92450 Vlab::SMT::Eq::accept()
;    @     0x7f6ccdc989ad Vlab::SMT::Visitor::visit()
;    @     0x7f6ccdd43878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f6ccdd845ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f6ccdd7b96e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f6ccdd90b5c Vlab::SMT::And::accept()
;    @     0x7f6ccdc989ad Vlab::SMT::Visitor::visit()
;    @     0x7f6ccdd84a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f6ccdd7ad2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f6ccdd8ed2a Vlab::SMT::Assert::accept()
;    @     0x7f6ccdc989ad Vlab::SMT::Visitor::visit()
;    @     0x7f6ccdd9d699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f6ccdd8e067 Vlab::SMT::Script::visit_children()
;    @     0x7f6ccdc989e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f6ccdd7ab35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f6ccdd8e03c Vlab::SMT::Script::accept()
;    @     0x7f6ccdc989ad Vlab::SMT::Visitor::visit()
;    @     0x7f6ccdd7a7bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f6ccdc7eb84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f6cccdda830 __libc_start_main
;    @           0x40de89 _start
