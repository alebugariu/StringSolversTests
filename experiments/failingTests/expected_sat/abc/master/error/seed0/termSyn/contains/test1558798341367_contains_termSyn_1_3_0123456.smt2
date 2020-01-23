(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.contains (str.at tmp_str0 tmp_int1) (str.at tmp_str0 tmp_int1)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;F0818 17:37:01.867393  3112 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f6aa65b6f5d  google::LogMessage::Fail()
;    @     0x7f6aa65b9513  google::LogMessage::SendToLog()
;    @     0x7f6aa65b6aeb  google::LogMessage::Flush()
;    @     0x7f6aa65b845e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f6aa6cb6fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f6aa6ccc842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f6aa6ccb8f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f6aa6c05102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f6aa6c0907b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f6aa6b27dab  std::function<>::operator()()
;    @     0x7f6aa6b25844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f6aa6c23cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f6aa6b279ad  Vlab::SMT::Visitor::visit()
;    @     0x7f6aa6b26bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f6aa6c05a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f6aa6c1fb5c  Vlab::SMT::And::accept()
;    @     0x7f6aa6b279ad  Vlab::SMT::Visitor::visit()
;    @     0x7f6aa6c04ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f6aa6c0a48c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f6aa6c1fb5c  Vlab::SMT::And::accept()
;    @     0x7f6aa6b279ad  Vlab::SMT::Visitor::visit()
;    @     0x7f6aa6c13a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f6aa6c0b3e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f6aa6c1febe  Vlab::SMT::Or::accept()
;    @     0x7f6aa6b279ad  Vlab::SMT::Visitor::visit()
;    @     0x7f6aa6c13a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f6aa6c09d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f6aa6c1dd2a  Vlab::SMT::Assert::accept()
;    @     0x7f6aa6b279ad  Vlab::SMT::Visitor::visit()
;    @     0x7f6aa6c2c699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f6aa6c1d067  Vlab::SMT::Script::visit_children()
;    @     0x7f6aa6b279e0  Vlab::SMT::Visitor::visit_children_of()
