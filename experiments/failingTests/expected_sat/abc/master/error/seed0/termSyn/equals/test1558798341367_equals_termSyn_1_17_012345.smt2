(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (= (= (int.to.str tmp_int0) (str.at tmp_str2 tmp_int0)) (= tmp_str2 tmp_str2)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: not_implemented
;I0818 17:36:37.729394  2911 UnaryAutomaton.cpp:325] 1
;I0818 17:36:37.729413  2911 UnaryAutomaton.cpp:326] 1
;I0818 17:36:37.729420  2911 UnaryAutomaton.cpp:327] 1
;F0818 17:36:37.817945  2911 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7f542049ff5d  google::LogMessage::Fail()
;    @     0x7f54204a2513  google::LogMessage::SendToLog()
;    @     0x7f542049faeb  google::LogMessage::Flush()
;    @     0x7f54204a145e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f5420ac3a26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7f5420b11992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7f5420a109ad  Vlab::SMT::Visitor::visit()
;    @     0x7f5420ac2762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7f5420b0edf0  Vlab::SMT::ToString::accept()
;    @     0x7f5420a109ad  Vlab::SMT::Visitor::visit()
;    @     0x7f5420abd7f6  Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f5420b0a450  Vlab::SMT::Eq::accept()
;    @     0x7f5420a109ad  Vlab::SMT::Visitor::visit()
;    @     0x7f5420abb878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7f5420afc5ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f5420af396e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f5420b08b5c  Vlab::SMT::And::accept()
;    @     0x7f5420a109ad  Vlab::SMT::Visitor::visit()
;    @     0x7f5420afca82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f5420af2d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f5420b06d2a  Vlab::SMT::Assert::accept()
;    @     0x7f5420a109ad  Vlab::SMT::Visitor::visit()
;    @     0x7f5420b15699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f5420b06067  Vlab::SMT::Script::visit_children()
;    @     0x7f5420a109e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f5420af2b35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f5420b0603c  Vlab::SMT::Script::accept()
;    @     0x7f5420a109ad  Vlab::SMT::Visitor::visit()
;    @     0x7f5420af27bb  Vlab::Solver::ConstraintSolver::start()
;    @     0x7f54209f6b84  Vlab::Driver::Solve()
;    @           0x410110  main
;    @     0x7f541fb52830  __libc_start_main
