(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (= (str.substr tmp_str0 tmp_int1 tmp_int1) (int.to.str tmp_int1)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;I0818 17:36:36.503038  2897 UnaryAutomaton.cpp:325] 1
;I0818 17:36:36.503068  2897 UnaryAutomaton.cpp:326] 1
;I0818 17:36:36.503079  2897 UnaryAutomaton.cpp:327] 1
;F0818 17:36:36.510275  2897 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f9f6ec87f5d  google::LogMessage::Fail()
;    @     0x7f9f6ec8a513  google::LogMessage::SendToLog()
;    @     0x7f9f6ec87aeb  google::LogMessage::Flush()
;    @     0x7f9f6ec8945e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f9f6f387fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f9f6f39d842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f9f6f39c8f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f9f6f2d6102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f9f6f2da07b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f9f6f1f8dab  std::function<>::operator()()
;    @     0x7f9f6f1f6844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f9f6f2f4cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f9f6f1f89ad  Vlab::SMT::Visitor::visit()
;    @     0x7f9f6f1f7bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f9f6f2d6a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f9f6f2f0b5c  Vlab::SMT::And::accept()
;    @     0x7f9f6f1f89ad  Vlab::SMT::Visitor::visit()
;    @     0x7f9f6f2d5ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f9f6f2db48c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f9f6f2f0b5c  Vlab::SMT::And::accept()
;    @     0x7f9f6f1f89ad  Vlab::SMT::Visitor::visit()
;    @     0x7f9f6f2e4a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f9f6f2dc3e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f9f6f2f0ebe  Vlab::SMT::Or::accept()
;    @     0x7f9f6f1f89ad  Vlab::SMT::Visitor::visit()
;    @     0x7f9f6f2e4a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f9f6f2dad2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f9f6f2eed2a  Vlab::SMT::Assert::accept()
;    @     0x7f9f6f1f89ad  Vlab::SMT::Visitor::visit()
;    @     0x7f9f6f2fd699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f9f6f2ee067  Vlab::SMT::Script::visit_children()
;    @     0x7f9f6f1f89e0  Vlab::SMT::Visitor::visit_children_of()
