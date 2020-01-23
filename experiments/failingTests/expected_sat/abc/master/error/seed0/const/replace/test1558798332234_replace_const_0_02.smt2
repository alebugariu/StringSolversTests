(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace tmp_str0 "" tmp_str2) ""))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = 
;tmp_str2 = 
;actual status: not_implemented
;PC: @     0x7f09fa6aaed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2615 (TID 0x7f0a79a98740) from PID 0; stack trace: ***
;    @     0x7f0a784e84b0 (unknown)
;    @     0x7f09fa6aaed6 dfaProject
;    @     0x7f0a794ba7ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f0a7954c318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f0a79443f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f0a79490400 Vlab::SMT::Replace::accept()
;    @     0x7f0a793919ad Vlab::SMT::Visitor::visit()
;    @     0x7f0a7943e7f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f0a7948b450 Vlab::SMT::Eq::accept()
;    @     0x7f0a793919ad Vlab::SMT::Visitor::visit()
;    @     0x7f0a7943c878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f0a7947d5ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f0a7947496e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f0a79489b5c Vlab::SMT::And::accept()
;    @     0x7f0a793919ad Vlab::SMT::Visitor::visit()
;    @     0x7f0a7947da82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f0a79473d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f0a79487d2a Vlab::SMT::Assert::accept()
;    @     0x7f0a793919ad Vlab::SMT::Visitor::visit()
;    @     0x7f0a79496699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f0a79487067 Vlab::SMT::Script::visit_children()
;    @     0x7f0a793919e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f0a79473b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f0a7948703c Vlab::SMT::Script::accept()
;    @     0x7f0a793919ad Vlab::SMT::Visitor::visit()
;    @     0x7f0a794737bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f0a79377b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f0a784d3830 __libc_start_main
;    @           0x40de89 _start
