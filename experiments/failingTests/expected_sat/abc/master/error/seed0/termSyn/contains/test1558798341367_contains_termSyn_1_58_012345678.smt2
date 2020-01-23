(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int5 () Int)
(assert
 (= (str.contains (str.replace tmp_str0 tmp_str0 tmp_str0) (str.substr tmp_str0 tmp_int5 tmp_int5)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1
;actual status: not_implemented
;F0818 17:37:04.832872  3134 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f6c404cef5d  google::LogMessage::Fail()
;    @     0x7f6c404d1513  google::LogMessage::SendToLog()
;    @     0x7f6c404ceaeb  google::LogMessage::Flush()
;    @     0x7f6c404d045e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f6c40bcefcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f6c40be4842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f6c40be38f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f6c40b1d102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f6c40b2107b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f6c40a3fdab  std::function<>::operator()()
;    @     0x7f6c40a3d844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f6c40b3bcb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f6c40a3f9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f6c40a3ebee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f6c40b1da21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f6c40b37b5c  Vlab::SMT::And::accept()
;    @     0x7f6c40a3f9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f6c40b1cca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f6c40b2248c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f6c40b37b5c  Vlab::SMT::And::accept()
;    @     0x7f6c40a3f9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f6c40b2ba82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f6c40b233e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f6c40b37ebe  Vlab::SMT::Or::accept()
;    @     0x7f6c40a3f9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f6c40b2ba82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f6c40b21d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f6c40b35d2a  Vlab::SMT::Assert::accept()
;    @     0x7f6c40a3f9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f6c40b44699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f6c40b35067  Vlab::SMT::Script::visit_children()
;    @     0x7f6c40a3f9e0  Vlab::SMT::Visitor::visit_children_of()
