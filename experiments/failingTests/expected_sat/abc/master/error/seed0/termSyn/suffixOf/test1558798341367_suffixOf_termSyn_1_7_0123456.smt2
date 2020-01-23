(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.suffixof (str.at tmp_str0 tmp_int1) (str.++ tmp_str0 tmp_str0)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;F0818 17:36:24.241892  2764 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f29de645f5d  google::LogMessage::Fail()
;    @     0x7f29de648513  google::LogMessage::SendToLog()
;    @     0x7f29de645aeb  google::LogMessage::Flush()
;    @     0x7f29de64745e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f29ded45fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f29ded5b842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f29ded5a8f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f29dec94102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f29dec9807b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f29debb6dab  std::function<>::operator()()
;    @     0x7f29debb4844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f29decb2cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f29debb69ad  Vlab::SMT::Visitor::visit()
;    @     0x7f29debb5bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f29dec94a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f29decaeb5c  Vlab::SMT::And::accept()
;    @     0x7f29debb69ad  Vlab::SMT::Visitor::visit()
;    @     0x7f29dec93ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f29dec9948c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f29decaeb5c  Vlab::SMT::And::accept()
;    @     0x7f29debb69ad  Vlab::SMT::Visitor::visit()
;    @     0x7f29deca2a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f29dec9a3e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f29decaeebe  Vlab::SMT::Or::accept()
;    @     0x7f29debb69ad  Vlab::SMT::Visitor::visit()
;    @     0x7f29deca2a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f29dec98d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f29decacd2a  Vlab::SMT::Assert::accept()
;    @     0x7f29debb69ad  Vlab::SMT::Visitor::visit()
;    @     0x7f29decbb699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f29decac067  Vlab::SMT::Script::visit_children()
;    @     0x7f29debb69e0  Vlab::SMT::Visitor::visit_children_of()
