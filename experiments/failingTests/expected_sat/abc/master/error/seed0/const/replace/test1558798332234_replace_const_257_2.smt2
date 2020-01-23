(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "\n" "" tmp_str2) "\"a\"\n"))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = "a"
;actual status: not_implemented
;PC: @     0x7fdb10aaeed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2569 (TID 0x7fdb8fe9c740) from PID 0; stack trace: ***
;    @     0x7fdb8e8ec4b0 (unknown)
;    @     0x7fdb10aaeed6 dfaProject
;    @     0x7fdb8f8be7ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7fdb8f950318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7fdb8f847f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7fdb8f894400 Vlab::SMT::Replace::accept()
;    @     0x7fdb8f7959ad Vlab::SMT::Visitor::visit()
;    @     0x7fdb8f8427f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7fdb8f88f450 Vlab::SMT::Eq::accept()
;    @     0x7fdb8f7959ad Vlab::SMT::Visitor::visit()
;    @     0x7fdb8f840878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7fdb8f8815ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7fdb8f87896e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fdb8f88db5c Vlab::SMT::And::accept()
;    @     0x7fdb8f7959ad Vlab::SMT::Visitor::visit()
;    @     0x7fdb8f881a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fdb8f877d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fdb8f88bd2a Vlab::SMT::Assert::accept()
;    @     0x7fdb8f7959ad Vlab::SMT::Visitor::visit()
;    @     0x7fdb8f89a699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fdb8f88b067 Vlab::SMT::Script::visit_children()
;    @     0x7fdb8f7959e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fdb8f877b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7fdb8f88b03c Vlab::SMT::Script::accept()
;    @     0x7fdb8f7959ad Vlab::SMT::Visitor::visit()
;    @     0x7fdb8f8777bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7fdb8f77bb84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7fdb8e8d7830 __libc_start_main
;    @           0x40de89 _start
