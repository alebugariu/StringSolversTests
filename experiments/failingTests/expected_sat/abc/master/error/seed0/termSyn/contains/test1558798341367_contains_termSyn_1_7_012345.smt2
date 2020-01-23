(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.contains (str.at tmp_str0 tmp_int1) (int.to.str tmp_int1)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;I0818 17:37:05.203274  3138 UnaryAutomaton.cpp:325] 1
;I0818 17:37:05.203313  3138 UnaryAutomaton.cpp:326] 1
;I0818 17:37:05.203322  3138 UnaryAutomaton.cpp:327] 1
;F0818 17:37:05.232134  3138 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7fbe19f95f5d  google::LogMessage::Fail()
;    @     0x7fbe19f98513  google::LogMessage::SendToLog()
;    @     0x7fbe19f95aeb  google::LogMessage::Flush()
;    @     0x7fbe19f9745e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7fbe1a695fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7fbe1a6ab842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7fbe1a6aa8f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7fbe1a5e4102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7fbe1a5e807b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7fbe1a506dab  std::function<>::operator()()
;    @     0x7fbe1a504844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7fbe1a602cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7fbe1a5069ad  Vlab::SMT::Visitor::visit()
;    @     0x7fbe1a505bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7fbe1a5e4a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7fbe1a5feb5c  Vlab::SMT::And::accept()
;    @     0x7fbe1a5069ad  Vlab::SMT::Visitor::visit()
;    @     0x7fbe1a5e3ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7fbe1a5e948c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fbe1a5feb5c  Vlab::SMT::And::accept()
;    @     0x7fbe1a5069ad  Vlab::SMT::Visitor::visit()
;    @     0x7fbe1a5f2a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fbe1a5ea3e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7fbe1a5feebe  Vlab::SMT::Or::accept()
;    @     0x7fbe1a5069ad  Vlab::SMT::Visitor::visit()
;    @     0x7fbe1a5f2a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fbe1a5e8d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fbe1a5fcd2a  Vlab::SMT::Assert::accept()
;    @     0x7fbe1a5069ad  Vlab::SMT::Visitor::visit()
;    @     0x7fbe1a60b699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fbe1a5fc067  Vlab::SMT::Script::visit_children()
;    @     0x7fbe1a5069e0  Vlab::SMT::Visitor::visit_children_of()
