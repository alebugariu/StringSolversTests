(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "\n" "" tmp_str2) "0\n"))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = 0
;actual status: not_implemented
;PC: @     0x7fdef6fceed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2466 (TID 0x7fdf763bc740) from PID 0; stack trace: ***
;    @     0x7fdf74e0c4b0 (unknown)
;    @     0x7fdef6fceed6 dfaProject
;    @     0x7fdf75dde7ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7fdf75e70318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7fdf75d67f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7fdf75db4400 Vlab::SMT::Replace::accept()
;    @     0x7fdf75cb59ad Vlab::SMT::Visitor::visit()
;    @     0x7fdf75d627f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7fdf75daf450 Vlab::SMT::Eq::accept()
;    @     0x7fdf75cb59ad Vlab::SMT::Visitor::visit()
;    @     0x7fdf75d60878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7fdf75da15ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7fdf75d9896e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fdf75dadb5c Vlab::SMT::And::accept()
;    @     0x7fdf75cb59ad Vlab::SMT::Visitor::visit()
;    @     0x7fdf75da1a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fdf75d97d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fdf75dabd2a Vlab::SMT::Assert::accept()
;    @     0x7fdf75cb59ad Vlab::SMT::Visitor::visit()
;    @     0x7fdf75dba699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fdf75dab067 Vlab::SMT::Script::visit_children()
;    @     0x7fdf75cb59e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fdf75d97b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7fdf75dab03c Vlab::SMT::Script::accept()
;    @     0x7fdf75cb59ad Vlab::SMT::Visitor::visit()
;    @     0x7fdf75d977bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7fdf75c9bb84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7fdf74df7830 __libc_start_main
;    @           0x40de89 _start
