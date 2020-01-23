(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (= (str.suffixof (int.to.str tmp_int0) (str.replace tmp_str2 tmp_str2 tmp_str2)) (str.contains tmp_str2 tmp_str2)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: not_implemented
;I0818 17:36:27.287096  2798 UnaryAutomaton.cpp:325] 1
;I0818 17:36:27.287117  2798 UnaryAutomaton.cpp:326] 1
;I0818 17:36:27.287127  2798 UnaryAutomaton.cpp:327] 1
;F0818 17:36:27.296882  2798 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str2)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f5b3f267f5d  google::LogMessage::Fail()
;    @     0x7f5b3f26a513  google::LogMessage::SendToLog()
;    @     0x7f5b3f267aeb  google::LogMessage::Flush()
;    @     0x7f5b3f26945e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f5b3f967fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f5b3f97d842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f5b3f97c8f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f5b3f8b6102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f5b3f8ba07b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f5b3f7d8dab  std::function<>::operator()()
;    @     0x7f5b3f7d6844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f5b3f8d4cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f5b3f7d89ad  Vlab::SMT::Visitor::visit()
;    @     0x7f5b3f7d7bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f5b3f8b6a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f5b3f8d0b5c  Vlab::SMT::And::accept()
;    @     0x7f5b3f7d89ad  Vlab::SMT::Visitor::visit()
;    @     0x7f5b3f8b5ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f5b3f8bb48c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f5b3f8d0b5c  Vlab::SMT::And::accept()
;    @     0x7f5b3f7d89ad  Vlab::SMT::Visitor::visit()
;    @     0x7f5b3f8c4a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f5b3f8bc3e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f5b3f8d0ebe  Vlab::SMT::Or::accept()
;    @     0x7f5b3f7d89ad  Vlab::SMT::Visitor::visit()
;    @     0x7f5b3f8c4a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f5b3f8bad2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f5b3f8ced2a  Vlab::SMT::Assert::accept()
;    @     0x7f5b3f7d89ad  Vlab::SMT::Visitor::visit()
;    @     0x7f5b3f8dd699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f5b3f8ce067  Vlab::SMT::Script::visit_children()
;    @     0x7f5b3f7d89e0  Vlab::SMT::Visitor::visit_children_of()
