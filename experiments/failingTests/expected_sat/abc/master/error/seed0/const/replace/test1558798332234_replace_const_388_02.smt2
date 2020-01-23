(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace tmp_str0 "" tmp_str2) "\n0"))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = 0
;tmp_str2 = \n
;actual status: not_implemented
;PC: @     0x7fdf2af5ced6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2350 (TID 0x7fdfaa34a740) from PID 0; stack trace: ***
;    @     0x7fdfa8d9a4b0 (unknown)
;    @     0x7fdf2af5ced6 dfaProject
;    @     0x7fdfa9d6c7ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7fdfa9dfe318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7fdfa9cf5f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7fdfa9d42400 Vlab::SMT::Replace::accept()
;    @     0x7fdfa9c439ad Vlab::SMT::Visitor::visit()
;    @     0x7fdfa9cf07f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7fdfa9d3d450 Vlab::SMT::Eq::accept()
;    @     0x7fdfa9c439ad Vlab::SMT::Visitor::visit()
;    @     0x7fdfa9cee878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7fdfa9d2f5ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7fdfa9d2696e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fdfa9d3bb5c Vlab::SMT::And::accept()
;    @     0x7fdfa9c439ad Vlab::SMT::Visitor::visit()
;    @     0x7fdfa9d2fa82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fdfa9d25d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fdfa9d39d2a Vlab::SMT::Assert::accept()
;    @     0x7fdfa9c439ad Vlab::SMT::Visitor::visit()
;    @     0x7fdfa9d48699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fdfa9d39067 Vlab::SMT::Script::visit_children()
;    @     0x7fdfa9c439e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fdfa9d25b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7fdfa9d3903c Vlab::SMT::Script::accept()
;    @     0x7fdfa9c439ad Vlab::SMT::Visitor::visit()
;    @     0x7fdfa9d257bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7fdfa9c29b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7fdfa8d85830 __libc_start_main
;    @           0x40de89 _start
