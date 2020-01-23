(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace tmp_str0 "" tmp_str2) "\n-1"))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = -1
;tmp_str2 = \n
;actual status: not_implemented
;PC: @     0x7f18a5b53ed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2437 (TID 0x7f1924f41740) from PID 0; stack trace: ***
;    @     0x7f19239914b0 (unknown)
;    @     0x7f18a5b53ed6 dfaProject
;    @     0x7f19249637ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f19249f5318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f19248ecf05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f1924939400 Vlab::SMT::Replace::accept()
;    @     0x7f192483a9ad Vlab::SMT::Visitor::visit()
;    @     0x7f19248e77f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f1924934450 Vlab::SMT::Eq::accept()
;    @     0x7f192483a9ad Vlab::SMT::Visitor::visit()
;    @     0x7f19248e5878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f19249265ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f192491d96e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f1924932b5c Vlab::SMT::And::accept()
;    @     0x7f192483a9ad Vlab::SMT::Visitor::visit()
;    @     0x7f1924926a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f192491cd2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f1924930d2a Vlab::SMT::Assert::accept()
;    @     0x7f192483a9ad Vlab::SMT::Visitor::visit()
;    @     0x7f192493f699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f1924930067 Vlab::SMT::Script::visit_children()
;    @     0x7f192483a9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f192491cb35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f192493003c Vlab::SMT::Script::accept()
;    @     0x7f192483a9ad Vlab::SMT::Visitor::visit()
;    @     0x7f192491c7bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f1924820b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f192397c830 __libc_start_main
;    @           0x40de89 _start
