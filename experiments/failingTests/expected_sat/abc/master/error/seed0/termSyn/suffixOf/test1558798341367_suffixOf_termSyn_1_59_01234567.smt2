(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.suffixof (str.substr tmp_str0 tmp_int1 tmp_int1) (str.++ tmp_str0 tmp_str0)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;F0818 17:36:25.687701  2780 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f71c3ba8f5d  google::LogMessage::Fail()
;    @     0x7f71c3bab513  google::LogMessage::SendToLog()
;    @     0x7f71c3ba8aeb  google::LogMessage::Flush()
;    @     0x7f71c3baa45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f71c42a8fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f71c42be842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f71c42bd8f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f71c41f7102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f71c41fb07b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f71c4119dab  std::function<>::operator()()
;    @     0x7f71c4117844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f71c4215cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f71c41199ad  Vlab::SMT::Visitor::visit()
;    @     0x7f71c4118bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f71c41f7a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f71c4211b5c  Vlab::SMT::And::accept()
;    @     0x7f71c41199ad  Vlab::SMT::Visitor::visit()
;    @     0x7f71c41f6ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f71c41fc48c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f71c4211b5c  Vlab::SMT::And::accept()
;    @     0x7f71c41199ad  Vlab::SMT::Visitor::visit()
;    @     0x7f71c4205a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f71c41fd3e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f71c4211ebe  Vlab::SMT::Or::accept()
;    @     0x7f71c41199ad  Vlab::SMT::Visitor::visit()
;    @     0x7f71c4205a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f71c41fbd2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f71c420fd2a  Vlab::SMT::Assert::accept()
;    @     0x7f71c41199ad  Vlab::SMT::Visitor::visit()
;    @     0x7f71c421e699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f71c420f067  Vlab::SMT::Script::visit_children()
;    @     0x7f71c41199e0  Vlab::SMT::Visitor::visit_children_of()
