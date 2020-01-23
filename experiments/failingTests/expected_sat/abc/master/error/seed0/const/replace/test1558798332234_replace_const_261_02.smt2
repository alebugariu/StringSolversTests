(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace tmp_str0 "" tmp_str2) "-1\n"))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = \n
;tmp_str2 = -1
;actual status: not_implemented
;PC: @     0x7f7ce5e1fed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2586 (TID 0x7f7d6520d740) from PID 0; stack trace: ***
;    @     0x7f7d63c5d4b0 (unknown)
;    @     0x7f7ce5e1fed6 dfaProject
;    @     0x7f7d64c2f7ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f7d64cc1318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f7d64bb8f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f7d64c05400 Vlab::SMT::Replace::accept()
;    @     0x7f7d64b069ad Vlab::SMT::Visitor::visit()
;    @     0x7f7d64bb37f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f7d64c00450 Vlab::SMT::Eq::accept()
;    @     0x7f7d64b069ad Vlab::SMT::Visitor::visit()
;    @     0x7f7d64bb1878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f7d64bf25ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f7d64be996e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f7d64bfeb5c Vlab::SMT::And::accept()
;    @     0x7f7d64b069ad Vlab::SMT::Visitor::visit()
;    @     0x7f7d64bf2a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f7d64be8d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f7d64bfcd2a Vlab::SMT::Assert::accept()
;    @     0x7f7d64b069ad Vlab::SMT::Visitor::visit()
;    @     0x7f7d64c0b699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f7d64bfc067 Vlab::SMT::Script::visit_children()
;    @     0x7f7d64b069e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f7d64be8b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f7d64bfc03c Vlab::SMT::Script::accept()
;    @     0x7f7d64b069ad Vlab::SMT::Visitor::visit()
;    @     0x7f7d64be87bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f7d64aecb84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f7d63c48830 __libc_start_main
;    @           0x40de89 _start
