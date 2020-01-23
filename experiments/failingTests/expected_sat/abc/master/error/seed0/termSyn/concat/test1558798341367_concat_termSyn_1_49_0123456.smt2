(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int14 () Int)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int4 () Int)
(assert
 (= (str.++ (str.replace tmp_str0 tmp_str0 tmp_str0) (int.to.str tmp_int4)) (str.at tmp_str0 tmp_int14)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int4 = -1
;tmp_int14 = 0
;actual status: not_implemented
;I0818 17:37:30.440989  3376 UnaryAutomaton.cpp:325] 1
;I0818 17:37:30.441009  3376 UnaryAutomaton.cpp:326] 1
;I0818 17:37:30.441016  3376 UnaryAutomaton.cpp:327] 1
;I0818 17:37:30.452376  3376 SymbolTable.cpp:304] tmp_int14,1
;F0818 17:37:30.527671  3376 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7f1e07be2f5d  google::LogMessage::Fail()
;    @     0x7f1e07be5513  google::LogMessage::SendToLog()
;    @     0x7f1e07be2aeb  google::LogMessage::Flush()
;    @     0x7f1e07be445e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f1e08206a26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7f1e08254992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7f1e081539ad  Vlab::SMT::Visitor::visit()
;    @     0x7f1e08205762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7f1e08251df0  Vlab::SMT::ToString::accept()
;    @     0x7f1e081539ad  Vlab::SMT::Visitor::visit()
;    @     0x7f1e082022cd  Vlab::Solver::VariableValueComputer::visitConcat()
;    @     0x7f1e0824e76c  Vlab::SMT::Concat::accept()
;    @     0x7f1e081539ad  Vlab::SMT::Visitor::visit()
;    @     0x7f1e082007f6  Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f1e0824d450  Vlab::SMT::Eq::accept()
;    @     0x7f1e081539ad  Vlab::SMT::Visitor::visit()
;    @     0x7f1e081fe878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7f1e0823f5ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f1e0823696e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f1e0824bb5c  Vlab::SMT::And::accept()
;    @     0x7f1e081539ad  Vlab::SMT::Visitor::visit()
;    @     0x7f1e0823fa82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f1e08235d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f1e08249d2a  Vlab::SMT::Assert::accept()
;    @     0x7f1e081539ad  Vlab::SMT::Visitor::visit()
;    @     0x7f1e08258699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f1e08249067  Vlab::SMT::Script::visit_children()
;    @     0x7f1e081539e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f1e08235b35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f1e0824903c  Vlab::SMT::Script::accept()
;    @     0x7f1e081539ad  Vlab::SMT::Visitor::visit()
;    @     0x7f1e082357bb  Vlab::Solver::ConstraintSolver::start()
