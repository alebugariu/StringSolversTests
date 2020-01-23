(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.prefixof (str.substr tmp_str0 tmp_int1 tmp_int1) (str.at tmp_str0 tmp_int1)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;F0818 17:36:33.926903  2868 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f947dd76f5d  google::LogMessage::Fail()
;    @     0x7f947dd79513  google::LogMessage::SendToLog()
;    @     0x7f947dd76aeb  google::LogMessage::Flush()
;    @     0x7f947dd7845e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f947e476fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f947e48c842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f947e48b8f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f947e3c5102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f947e3c907b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f947e2e7dab  std::function<>::operator()()
;    @     0x7f947e2e5844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f947e3e3cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f947e2e79ad  Vlab::SMT::Visitor::visit()
;    @     0x7f947e2e6bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f947e3c5a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f947e3dfb5c  Vlab::SMT::And::accept()
;    @     0x7f947e2e79ad  Vlab::SMT::Visitor::visit()
;    @     0x7f947e3c4ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f947e3ca48c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f947e3dfb5c  Vlab::SMT::And::accept()
;    @     0x7f947e2e79ad  Vlab::SMT::Visitor::visit()
;    @     0x7f947e3d3a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f947e3cb3e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f947e3dfebe  Vlab::SMT::Or::accept()
;    @     0x7f947e2e79ad  Vlab::SMT::Visitor::visit()
;    @     0x7f947e3d3a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f947e3c9d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f947e3ddd2a  Vlab::SMT::Assert::accept()
;    @     0x7f947e2e79ad  Vlab::SMT::Visitor::visit()
;    @     0x7f947e3ec699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f947e3dd067  Vlab::SMT::Script::visit_children()
;    @     0x7f947e2e79e0  Vlab::SMT::Visitor::visit_children_of()
