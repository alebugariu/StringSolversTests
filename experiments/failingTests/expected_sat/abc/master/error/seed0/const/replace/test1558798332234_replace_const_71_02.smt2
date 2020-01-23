(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace tmp_str0 "" tmp_str2) "2\"a\""))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = "a"
;tmp_str2 = 2
;actual status: not_implemented
;PC: @     0x7f05d438ded6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2518 (TID 0x7f065377b740) from PID 0; stack trace: ***
;    @     0x7f06521cb4b0 (unknown)
;    @     0x7f05d438ded6 dfaProject
;    @     0x7f065319d7ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f065322f318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f0653126f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f0653173400 Vlab::SMT::Replace::accept()
;    @     0x7f06530749ad Vlab::SMT::Visitor::visit()
;    @     0x7f06531217f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f065316e450 Vlab::SMT::Eq::accept()
;    @     0x7f06530749ad Vlab::SMT::Visitor::visit()
;    @     0x7f065311f878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f06531605ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f065315796e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f065316cb5c Vlab::SMT::And::accept()
;    @     0x7f06530749ad Vlab::SMT::Visitor::visit()
;    @     0x7f0653160a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f0653156d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f065316ad2a Vlab::SMT::Assert::accept()
;    @     0x7f06530749ad Vlab::SMT::Visitor::visit()
;    @     0x7f0653179699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f065316a067 Vlab::SMT::Script::visit_children()
;    @     0x7f06530749e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f0653156b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f065316a03c Vlab::SMT::Script::accept()
;    @     0x7f06530749ad Vlab::SMT::Visitor::visit()
;    @     0x7f06531567bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f065305ab84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f06521b6830 __libc_start_main
;    @           0x40de89 _start
