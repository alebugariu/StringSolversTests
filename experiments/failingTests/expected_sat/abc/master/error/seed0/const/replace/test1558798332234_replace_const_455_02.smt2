(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace tmp_str0 "" tmp_str2) "22"))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = 2
;tmp_str2 = 2
;actual status: not_implemented
;PC: @     0x7f289c72ded6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2361 (TID 0x7f291bb1b740) from PID 0; stack trace: ***
;    @     0x7f291a56b4b0 (unknown)
;    @     0x7f289c72ded6 dfaProject
;    @     0x7f291b53d7ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f291b5cf318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f291b4c6f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f291b513400 Vlab::SMT::Replace::accept()
;    @     0x7f291b4149ad Vlab::SMT::Visitor::visit()
;    @     0x7f291b4c17f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f291b50e450 Vlab::SMT::Eq::accept()
;    @     0x7f291b4149ad Vlab::SMT::Visitor::visit()
;    @     0x7f291b4bf878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f291b5005ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f291b4f796e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f291b50cb5c Vlab::SMT::And::accept()
;    @     0x7f291b4149ad Vlab::SMT::Visitor::visit()
;    @     0x7f291b500a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f291b4f6d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f291b50ad2a Vlab::SMT::Assert::accept()
;    @     0x7f291b4149ad Vlab::SMT::Visitor::visit()
;    @     0x7f291b519699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f291b50a067 Vlab::SMT::Script::visit_children()
;    @     0x7f291b4149e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f291b4f6b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f291b50a03c Vlab::SMT::Script::accept()
;    @     0x7f291b4149ad Vlab::SMT::Visitor::visit()
;    @     0x7f291b4f67bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f291b3fab84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f291a556830 __libc_start_main
;    @           0x40de89 _start
