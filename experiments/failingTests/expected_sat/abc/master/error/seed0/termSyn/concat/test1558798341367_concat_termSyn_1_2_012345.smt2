(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.++ (str.at tmp_str0 tmp_int1) (str.at tmp_str0 tmp_int1)) (int.to.str tmp_int1)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;I0818 17:37:28.662465  3353 UnaryAutomaton.cpp:325] 1
;I0818 17:37:28.662518  3353 UnaryAutomaton.cpp:326] 1
;I0818 17:37:28.662528  3353 UnaryAutomaton.cpp:327] 1
;F0818 17:37:28.668262  3353 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7f17b02d2f5d  google::LogMessage::Fail()
;    @     0x7f17b02d5513  google::LogMessage::SendToLog()
;    @     0x7f17b02d2aeb  google::LogMessage::Flush()
;    @     0x7f17b02d445e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f17b08f6a26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7f17b0944992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7f17b08439ad  Vlab::SMT::Visitor::visit()
;    @     0x7f17b08f5762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7f17b0941df0  Vlab::SMT::ToString::accept()
;    @     0x7f17b08439ad  Vlab::SMT::Visitor::visit()
;    @     0x7f17b08f07f6  Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f17b093d450  Vlab::SMT::Eq::accept()
;    @     0x7f17b08439ad  Vlab::SMT::Visitor::visit()
;    @     0x7f17b08ee878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7f17b092f5ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f17b092696e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f17b093bb5c  Vlab::SMT::And::accept()
;    @     0x7f17b08439ad  Vlab::SMT::Visitor::visit()
;    @     0x7f17b092fa82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f17b0925d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f17b0939d2a  Vlab::SMT::Assert::accept()
;    @     0x7f17b08439ad  Vlab::SMT::Visitor::visit()
;    @     0x7f17b0948699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f17b0939067  Vlab::SMT::Script::visit_children()
;    @     0x7f17b08439e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f17b0925b35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f17b093903c  Vlab::SMT::Script::accept()
;    @     0x7f17b08439ad  Vlab::SMT::Visitor::visit()
;    @     0x7f17b09257bb  Vlab::Solver::ConstraintSolver::start()
;    @     0x7f17b0829b84  Vlab::Driver::Solve()
;    @           0x410110  main
;    @     0x7f17af985830  __libc_start_main
