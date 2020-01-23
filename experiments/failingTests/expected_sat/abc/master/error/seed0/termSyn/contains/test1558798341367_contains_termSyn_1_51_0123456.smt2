(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int4 () Int)
(assert
 (= (str.contains (str.replace tmp_str0 tmp_str0 tmp_str0) (int.to.str tmp_int4)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int4 = -1
;actual status: not_implemented
;I0818 17:36:59.145395  3090 UnaryAutomaton.cpp:325] 1
;I0818 17:36:59.145412  3090 UnaryAutomaton.cpp:326] 1
;I0818 17:36:59.145421  3090 UnaryAutomaton.cpp:327] 1
;F0818 17:36:59.193645  3090 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f22d14d5f5d  google::LogMessage::Fail()
;    @     0x7f22d14d8513  google::LogMessage::SendToLog()
;    @     0x7f22d14d5aeb  google::LogMessage::Flush()
;    @     0x7f22d14d745e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f22d1bd5fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f22d1beb842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f22d1bea8f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f22d1b24102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f22d1b2807b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f22d1a46dab  std::function<>::operator()()
;    @     0x7f22d1a44844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f22d1b42cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f22d1a469ad  Vlab::SMT::Visitor::visit()
;    @     0x7f22d1a45bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f22d1b24a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f22d1b3eb5c  Vlab::SMT::And::accept()
;    @     0x7f22d1a469ad  Vlab::SMT::Visitor::visit()
;    @     0x7f22d1b23ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f22d1b2948c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f22d1b3eb5c  Vlab::SMT::And::accept()
;    @     0x7f22d1a469ad  Vlab::SMT::Visitor::visit()
;    @     0x7f22d1b32a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f22d1b2a3e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f22d1b3eebe  Vlab::SMT::Or::accept()
;    @     0x7f22d1a469ad  Vlab::SMT::Visitor::visit()
;    @     0x7f22d1b32a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f22d1b28d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f22d1b3cd2a  Vlab::SMT::Assert::accept()
;    @     0x7f22d1a469ad  Vlab::SMT::Visitor::visit()
;    @     0x7f22d1b4b699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f22d1b3c067  Vlab::SMT::Script::visit_children()
;    @     0x7f22d1a469e0  Vlab::SMT::Visitor::visit_children_of()
