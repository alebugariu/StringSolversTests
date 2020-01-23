(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "\n" "" tmp_str2) "\n\n"))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = \n
;actual status: not_implemented
;PC: @     0x7f21f2dbced6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2522 (TID 0x7f22721aa740) from PID 0; stack trace: ***
;    @     0x7f2270bfa4b0 (unknown)
;    @     0x7f21f2dbced6 dfaProject
;    @     0x7f2271bcc7ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f2271c5e318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f2271b55f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f2271ba2400 Vlab::SMT::Replace::accept()
;    @     0x7f2271aa39ad Vlab::SMT::Visitor::visit()
;    @     0x7f2271b507f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f2271b9d450 Vlab::SMT::Eq::accept()
;    @     0x7f2271aa39ad Vlab::SMT::Visitor::visit()
;    @     0x7f2271b4e878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f2271b8f5ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f2271b8696e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f2271b9bb5c Vlab::SMT::And::accept()
;    @     0x7f2271aa39ad Vlab::SMT::Visitor::visit()
;    @     0x7f2271b8fa82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f2271b85d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f2271b99d2a Vlab::SMT::Assert::accept()
;    @     0x7f2271aa39ad Vlab::SMT::Visitor::visit()
;    @     0x7f2271ba8699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f2271b99067 Vlab::SMT::Script::visit_children()
;    @     0x7f2271aa39e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f2271b85b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f2271b9903c Vlab::SMT::Script::accept()
;    @     0x7f2271aa39ad Vlab::SMT::Visitor::visit()
;    @     0x7f2271b857bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f2271a89b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f2270be5830 __libc_start_main
;    @           0x40de89 _start
