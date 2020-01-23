(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "\"a\"" "" tmp_str2) "-1\"a\""))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = -1
;actual status: not_implemented
;PC: @     0x7f6dd31c2ed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2353 (TID 0x7f6e525b0740) from PID 0; stack trace: ***
;    @     0x7f6e510004b0 (unknown)
;    @     0x7f6dd31c2ed6 dfaProject
;    @     0x7f6e51fd27ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f6e52064318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f6e51f5bf05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f6e51fa8400 Vlab::SMT::Replace::accept()
;    @     0x7f6e51ea99ad Vlab::SMT::Visitor::visit()
;    @     0x7f6e51f567f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f6e51fa3450 Vlab::SMT::Eq::accept()
;    @     0x7f6e51ea99ad Vlab::SMT::Visitor::visit()
;    @     0x7f6e51f54878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f6e51f955ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f6e51f8c96e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f6e51fa1b5c Vlab::SMT::And::accept()
;    @     0x7f6e51ea99ad Vlab::SMT::Visitor::visit()
;    @     0x7f6e51f95a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f6e51f8bd2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f6e51f9fd2a Vlab::SMT::Assert::accept()
;    @     0x7f6e51ea99ad Vlab::SMT::Visitor::visit()
;    @     0x7f6e51fae699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f6e51f9f067 Vlab::SMT::Script::visit_children()
;    @     0x7f6e51ea99e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f6e51f8bb35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f6e51f9f03c Vlab::SMT::Script::accept()
;    @     0x7f6e51ea99ad Vlab::SMT::Visitor::visit()
;    @     0x7f6e51f8b7bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f6e51e8fb84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f6e50feb830 __libc_start_main
;    @           0x40de89 _start
