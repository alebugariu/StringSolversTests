(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace tmp_str0 "" tmp_str2) "\"a\"\n"))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = \n
;tmp_str2 = "a"
;actual status: not_implemented
;PC: @     0x7fca0bf1fed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2532 (TID 0x7fca8b30d740) from PID 0; stack trace: ***
;    @     0x7fca89d5d4b0 (unknown)
;    @     0x7fca0bf1fed6 dfaProject
;    @     0x7fca8ad2f7ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7fca8adc1318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7fca8acb8f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7fca8ad05400 Vlab::SMT::Replace::accept()
;    @     0x7fca8ac069ad Vlab::SMT::Visitor::visit()
;    @     0x7fca8acb37f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7fca8ad00450 Vlab::SMT::Eq::accept()
;    @     0x7fca8ac069ad Vlab::SMT::Visitor::visit()
;    @     0x7fca8acb1878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7fca8acf25ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7fca8ace996e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fca8acfeb5c Vlab::SMT::And::accept()
;    @     0x7fca8ac069ad Vlab::SMT::Visitor::visit()
;    @     0x7fca8acf2a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fca8ace8d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fca8acfcd2a Vlab::SMT::Assert::accept()
;    @     0x7fca8ac069ad Vlab::SMT::Visitor::visit()
;    @     0x7fca8ad0b699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fca8acfc067 Vlab::SMT::Script::visit_children()
;    @     0x7fca8ac069e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fca8ace8b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7fca8acfc03c Vlab::SMT::Script::accept()
;    @     0x7fca8ac069ad Vlab::SMT::Visitor::visit()
;    @     0x7fca8ace87bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7fca8abecb84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7fca89d48830 __libc_start_main
;    @           0x40de89 _start
