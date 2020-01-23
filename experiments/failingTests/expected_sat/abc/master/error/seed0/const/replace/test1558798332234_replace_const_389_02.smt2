(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace tmp_str0 "" tmp_str2) "-10"))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = 0
;tmp_str2 = -1
;actual status: not_implemented
;PC: @     0x7fa687053ed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2556 (TID 0x7fa706441740) from PID 0; stack trace: ***
;    @     0x7fa704e914b0 (unknown)
;    @     0x7fa687053ed6 dfaProject
;    @     0x7fa705e637ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7fa705ef5318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7fa705decf05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7fa705e39400 Vlab::SMT::Replace::accept()
;    @     0x7fa705d3a9ad Vlab::SMT::Visitor::visit()
;    @     0x7fa705de77f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7fa705e34450 Vlab::SMT::Eq::accept()
;    @     0x7fa705d3a9ad Vlab::SMT::Visitor::visit()
;    @     0x7fa705de5878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7fa705e265ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7fa705e1d96e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fa705e32b5c Vlab::SMT::And::accept()
;    @     0x7fa705d3a9ad Vlab::SMT::Visitor::visit()
;    @     0x7fa705e26a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fa705e1cd2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fa705e30d2a Vlab::SMT::Assert::accept()
;    @     0x7fa705d3a9ad Vlab::SMT::Visitor::visit()
;    @     0x7fa705e3f699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fa705e30067 Vlab::SMT::Script::visit_children()
;    @     0x7fa705d3a9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fa705e1cb35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7fa705e3003c Vlab::SMT::Script::accept()
;    @     0x7fa705d3a9ad Vlab::SMT::Visitor::visit()
;    @     0x7fa705e1c7bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7fa705d20b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7fa704e7c830 __libc_start_main
;    @           0x40de89 _start
