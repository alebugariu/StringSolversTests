(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.suffixof (str.at tmp_str0 tmp_int1) (str.replace tmp_str0 tmp_str0 tmp_str0)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;F0818 17:36:23.836930  2760 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7fa46cc48f5d  google::LogMessage::Fail()
;    @     0x7fa46cc4b513  google::LogMessage::SendToLog()
;    @     0x7fa46cc48aeb  google::LogMessage::Flush()
;    @     0x7fa46cc4a45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7fa46d348fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7fa46d35e842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7fa46d35d8f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7fa46d297102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7fa46d29b07b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7fa46d1b9dab  std::function<>::operator()()
;    @     0x7fa46d1b7844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7fa46d2b5cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7fa46d1b99ad  Vlab::SMT::Visitor::visit()
;    @     0x7fa46d1b8bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7fa46d297a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7fa46d2b1b5c  Vlab::SMT::And::accept()
;    @     0x7fa46d1b99ad  Vlab::SMT::Visitor::visit()
;    @     0x7fa46d296ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7fa46d29c48c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fa46d2b1b5c  Vlab::SMT::And::accept()
;    @     0x7fa46d1b99ad  Vlab::SMT::Visitor::visit()
;    @     0x7fa46d2a5a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fa46d29d3e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7fa46d2b1ebe  Vlab::SMT::Or::accept()
;    @     0x7fa46d1b99ad  Vlab::SMT::Visitor::visit()
;    @     0x7fa46d2a5a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fa46d29bd2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fa46d2afd2a  Vlab::SMT::Assert::accept()
;    @     0x7fa46d1b99ad  Vlab::SMT::Visitor::visit()
;    @     0x7fa46d2be699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fa46d2af067  Vlab::SMT::Script::visit_children()
;    @     0x7fa46d1b99e0  Vlab::SMT::Visitor::visit_children_of()
