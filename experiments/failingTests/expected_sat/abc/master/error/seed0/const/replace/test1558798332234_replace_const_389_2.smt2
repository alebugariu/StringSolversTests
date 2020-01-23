(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "0" "" tmp_str2) "-10"))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = -1
;actual status: not_implemented
;PC: @     0x7faee4ce9ed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2511 (TID 0x7faf640d7740) from PID 0; stack trace: ***
;    @     0x7faf62b274b0 (unknown)
;    @     0x7faee4ce9ed6 dfaProject
;    @     0x7faf63af97ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7faf63b8b318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7faf63a82f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7faf63acf400 Vlab::SMT::Replace::accept()
;    @     0x7faf639d09ad Vlab::SMT::Visitor::visit()
;    @     0x7faf63a7d7f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7faf63aca450 Vlab::SMT::Eq::accept()
;    @     0x7faf639d09ad Vlab::SMT::Visitor::visit()
;    @     0x7faf63a7b878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7faf63abc5ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7faf63ab396e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7faf63ac8b5c Vlab::SMT::And::accept()
;    @     0x7faf639d09ad Vlab::SMT::Visitor::visit()
;    @     0x7faf63abca82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7faf63ab2d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7faf63ac6d2a Vlab::SMT::Assert::accept()
;    @     0x7faf639d09ad Vlab::SMT::Visitor::visit()
;    @     0x7faf63ad5699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7faf63ac6067 Vlab::SMT::Script::visit_children()
;    @     0x7faf639d09e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7faf63ab2b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7faf63ac603c Vlab::SMT::Script::accept()
;    @     0x7faf639d09ad Vlab::SMT::Visitor::visit()
;    @     0x7faf63ab27bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7faf639b6b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7faf62b12830 __libc_start_main
;    @           0x40de89 _start
