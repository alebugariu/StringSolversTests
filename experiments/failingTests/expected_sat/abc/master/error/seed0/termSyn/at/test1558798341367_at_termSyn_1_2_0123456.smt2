(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.at (str.at tmp_str0 tmp_int1) (str.indexof tmp_str0 tmp_str0 tmp_int1)) (int.to.str tmp_int1)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;I0818 17:37:18.811280  3261 UnaryAutomaton.cpp:325] 1
;I0818 17:37:18.811353  3261 UnaryAutomaton.cpp:326] 1
;I0818 17:37:18.811367  3261 UnaryAutomaton.cpp:327] 1
;F0818 17:37:18.818188  3261 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7f568fca1f5d  google::LogMessage::Fail()
;    @     0x7f568fca4513  google::LogMessage::SendToLog()
;    @     0x7f568fca1aeb  google::LogMessage::Flush()
;    @     0x7f568fca345e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f56902c5a26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7f5690313992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7f56902129ad  Vlab::SMT::Visitor::visit()
;    @     0x7f56902c4762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7f5690310df0  Vlab::SMT::ToString::accept()
;    @     0x7f56902129ad  Vlab::SMT::Visitor::visit()
;    @     0x7f56902bf7f6  Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f569030c450  Vlab::SMT::Eq::accept()
;    @     0x7f56902129ad  Vlab::SMT::Visitor::visit()
;    @     0x7f56902bd878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7f56902fe5ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f56902f596e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f569030ab5c  Vlab::SMT::And::accept()
;    @     0x7f56902129ad  Vlab::SMT::Visitor::visit()
;    @     0x7f56902fea82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f56902f4d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f5690308d2a  Vlab::SMT::Assert::accept()
;    @     0x7f56902129ad  Vlab::SMT::Visitor::visit()
;    @     0x7f5690317699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f5690308067  Vlab::SMT::Script::visit_children()
;    @     0x7f56902129e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f56902f4b35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f569030803c  Vlab::SMT::Script::accept()
;    @     0x7f56902129ad  Vlab::SMT::Visitor::visit()
;    @     0x7f56902f47bb  Vlab::Solver::ConstraintSolver::start()
;    @     0x7f56901f8b84  Vlab::Driver::Solve()
;    @           0x410110  main
;    @     0x7f568f354830  __libc_start_main
