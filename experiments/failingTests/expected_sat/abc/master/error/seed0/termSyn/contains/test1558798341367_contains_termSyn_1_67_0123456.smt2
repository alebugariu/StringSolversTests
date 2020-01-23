(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.contains (str.substr tmp_str0 tmp_int1 tmp_int1) (int.to.str tmp_int1)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;I0818 17:37:06.151425  3148 UnaryAutomaton.cpp:325] 1
;I0818 17:37:06.151469  3148 UnaryAutomaton.cpp:326] 1
;I0818 17:37:06.151479  3148 UnaryAutomaton.cpp:327] 1
;F0818 17:37:06.175885  3148 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7ff8a3615f5d  google::LogMessage::Fail()
;    @     0x7ff8a3618513  google::LogMessage::SendToLog()
;    @     0x7ff8a3615aeb  google::LogMessage::Flush()
;    @     0x7ff8a361745e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7ff8a3d15fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7ff8a3d2b842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7ff8a3d2a8f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7ff8a3c64102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7ff8a3c6807b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7ff8a3b86dab  std::function<>::operator()()
;    @     0x7ff8a3b84844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7ff8a3c82cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7ff8a3b869ad  Vlab::SMT::Visitor::visit()
;    @     0x7ff8a3b85bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7ff8a3c64a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7ff8a3c7eb5c  Vlab::SMT::And::accept()
;    @     0x7ff8a3b869ad  Vlab::SMT::Visitor::visit()
;    @     0x7ff8a3c63ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7ff8a3c6948c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7ff8a3c7eb5c  Vlab::SMT::And::accept()
;    @     0x7ff8a3b869ad  Vlab::SMT::Visitor::visit()
;    @     0x7ff8a3c72a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7ff8a3c6a3e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7ff8a3c7eebe  Vlab::SMT::Or::accept()
;    @     0x7ff8a3b869ad  Vlab::SMT::Visitor::visit()
;    @     0x7ff8a3c72a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7ff8a3c68d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7ff8a3c7cd2a  Vlab::SMT::Assert::accept()
;    @     0x7ff8a3b869ad  Vlab::SMT::Visitor::visit()
;    @     0x7ff8a3c8b699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7ff8a3c7c067  Vlab::SMT::Script::visit_children()
;    @     0x7ff8a3b869e0  Vlab::SMT::Visitor::visit_children_of()
