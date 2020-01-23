(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace (str.at tmp_str0 tmp_int1) (str.substr tmp_str0 tmp_int1 tmp_int1) (str.substr tmp_str0 tmp_int1 tmp_int1)) (int.to.str tmp_int1)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;I0818 17:37:12.731899  3211 UnaryAutomaton.cpp:325] 1
;I0818 17:37:12.731922  3211 UnaryAutomaton.cpp:326] 1
;I0818 17:37:12.731930  3211 UnaryAutomaton.cpp:327] 1
;F0818 17:37:12.739357  3211 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7fa5e91e1f5d  google::LogMessage::Fail()
;    @     0x7fa5e91e4513  google::LogMessage::SendToLog()
;    @     0x7fa5e91e1aeb  google::LogMessage::Flush()
;    @     0x7fa5e91e345e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7fa5e9805a26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7fa5e9853992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7fa5e97529ad  Vlab::SMT::Visitor::visit()
;    @     0x7fa5e9804762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7fa5e9850df0  Vlab::SMT::ToString::accept()
;    @     0x7fa5e97529ad  Vlab::SMT::Visitor::visit()
;    @     0x7fa5e97ff7f6  Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7fa5e984c450  Vlab::SMT::Eq::accept()
;    @     0x7fa5e97529ad  Vlab::SMT::Visitor::visit()
;    @     0x7fa5e97fd878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7fa5e983e5ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7fa5e983596e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fa5e984ab5c  Vlab::SMT::And::accept()
;    @     0x7fa5e97529ad  Vlab::SMT::Visitor::visit()
;    @     0x7fa5e983ea82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fa5e9834d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fa5e9848d2a  Vlab::SMT::Assert::accept()
;    @     0x7fa5e97529ad  Vlab::SMT::Visitor::visit()
;    @     0x7fa5e9857699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fa5e9848067  Vlab::SMT::Script::visit_children()
;    @     0x7fa5e97529e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fa5e9834b35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7fa5e984803c  Vlab::SMT::Script::accept()
;    @     0x7fa5e97529ad  Vlab::SMT::Visitor::visit()
;    @     0x7fa5e98347bb  Vlab::Solver::ConstraintSolver::start()
;    @     0x7fa5e9738b84  Vlab::Driver::Solve()
;    @           0x410110  main
;    @     0x7fa5e8894830  __libc_start_main
