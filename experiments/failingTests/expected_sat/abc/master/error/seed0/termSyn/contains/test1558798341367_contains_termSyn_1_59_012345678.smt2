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
;F0818 17:36:59.536867  3092 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7fe838778f5d  google::LogMessage::Fail()
;    @     0x7fe83877b513  google::LogMessage::SendToLog()
;    @     0x7fe838778aeb  google::LogMessage::Flush()
;    @     0x7fe83877a45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7fe838e78fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7fe838e8e842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7fe838e8d8f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7fe838dc7102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7fe838dcb07b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7fe838ce9dab  std::function<>::operator()()
;    @     0x7fe838ce7844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7fe838de5cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7fe838ce99ad  Vlab::SMT::Visitor::visit()
;    @     0x7fe838ce8bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7fe838dc7a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7fe838de1b5c  Vlab::SMT::And::accept()
;    @     0x7fe838ce99ad  Vlab::SMT::Visitor::visit()
;    @     0x7fe838dc6ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7fe838dcc48c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fe838de1b5c  Vlab::SMT::And::accept()
;    @     0x7fe838ce99ad  Vlab::SMT::Visitor::visit()
;    @     0x7fe838dd5a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fe838dcd3e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7fe838de1ebe  Vlab::SMT::Or::accept()
;    @     0x7fe838ce99ad  Vlab::SMT::Visitor::visit()
;    @     0x7fe838dd5a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fe838dcbd2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fe838ddfd2a  Vlab::SMT::Assert::accept()
;    @     0x7fe838ce99ad  Vlab::SMT::Visitor::visit()
;    @     0x7fe838dee699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fe838ddf067  Vlab::SMT::Script::visit_children()
;    @     0x7fe838ce99e0  Vlab::SMT::Visitor::visit_children_of()
