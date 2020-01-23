(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.prefixof (str.at tmp_str0 tmp_int1) (str.++ tmp_str0 tmp_str0)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;F0818 17:36:31.782510  2846 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7fabae0dbf5d  google::LogMessage::Fail()
;    @     0x7fabae0de513  google::LogMessage::SendToLog()
;    @     0x7fabae0dbaeb  google::LogMessage::Flush()
;    @     0x7fabae0dd45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7fabae7dbfcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7fabae7f1842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7fabae7f08f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7fabae72a102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7fabae72e07b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7fabae64cdab  std::function<>::operator()()
;    @     0x7fabae64a844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7fabae748cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7fabae64c9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fabae64bbee  Vlab::Solver::AstTraverser::visit()
;    @     0x7fabae72aa21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7fabae744b5c  Vlab::SMT::And::accept()
;    @     0x7fabae64c9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fabae729ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7fabae72f48c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fabae744b5c  Vlab::SMT::And::accept()
;    @     0x7fabae64c9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fabae738a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fabae7303e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7fabae744ebe  Vlab::SMT::Or::accept()
;    @     0x7fabae64c9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fabae738a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fabae72ed2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fabae742d2a  Vlab::SMT::Assert::accept()
;    @     0x7fabae64c9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fabae751699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fabae742067  Vlab::SMT::Script::visit_children()
;    @     0x7fabae64c9e0  Vlab::SMT::Visitor::visit_children_of()
